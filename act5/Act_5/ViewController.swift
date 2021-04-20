//
//  ViewController.swift
//  Act_5
//
//  Created by Pamela on 12/04/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {


    @IBOutlet weak var labelNombre: UILabel!
    @IBOutlet weak var tlX: UITextField!
    @IBOutlet weak var tlY: UITextField!
    @IBOutlet weak var tableView: UITableView!
    var listaCoordenadas = [Coordenada]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let app = UIApplication.shared
        
        NotificationCenter.default.addObserver(self, selector: #selector(guardarCoordenadas), name: UIApplication.didEnterBackgroundNotification, object: app)
       
        if FileManager.default.fileExists(atPath: dataFileURL().path){
            obtenerCoordenadas()
        }
        
        agregarConfiguracion()
    }

    @IBAction func agregarCoordenadas(_ sender: UIButton) {

        if let x = tlX.text,
           let y = tlY.text {
            let nueva = Coordenada(x: Int(x)!, y: Int(y)!)
            agregaCoordenada(coordenada: nueva)
            tlX.text = ""
            tlY.text = ""
            
        }
        
    }
    // MARK: - Table view data source
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaCoordenadas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath)
        cell.textLabel?.text = listaCoordenadas[indexPath.row].regresaCoords()
        return cell
    }
    
    // MARK: - Métodos para guardar y obtener datos
    
    func dataFileURL() -> URL {
        let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        let pathArchivo = documentsDirectory.appendingPathComponent("Coordenadas").appendingPathExtension("plist")
        print(pathArchivo.path)
        return pathArchivo
    }
    
    @IBAction func guardarCoordenadas() {
        do {
            let data = try PropertyListEncoder().encode(listaCoordenadas)
            try data.write(to: dataFileURL())
        } catch {
            print("Error al guardar los datos")
        }
    }
    
    func obtenerCoordenadas(){
        listaCoordenadas.removeAll()
        
        do {
            let data = try Data.init(contentsOf: dataFileURL())
            listaCoordenadas = try PropertyListDecoder().decode([Coordenada].self, from: data)
            if(tableView != nil) {
                tableView.reloadData()
            }
        } catch {
            print("Error al cargar los datos del archivo")
        }
        
        
    }
    
    func agregarConfiguracion() {

        let defaults = UserDefaults.standard

        let usuario = defaults.value(forKey: "usuario") as? String
        if labelNombre != nil && usuario != nil {
            labelNombre.text = usuario
        }
        
        let fondo = defaults.bool(forKey: "fondo")
        let tamano = defaults.integer(forKey: "tamaño")
        
        if(tableView != nil){
            if(defaults.value(forKey: "tamaño") != nil){
                switch tamano {
                case 0:
                    tableView.rowHeight = 40.0
                    break;
                case 1:
                    tableView.rowHeight = 50.0
                    break;
                case 2:
                    tableView.rowHeight = 60.0
                    break;
                default:
                    tableView.rowHeight = 50.0
                }
                    tableView.reloadData()
                
            }
            if (fondo) {
                tableView.backgroundColor = #colorLiteral(red: 0.8574675629, green: 0.8076344945, blue: 1, alpha: 1)
            } else {
                tableView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            }
        }
        
        
    }
    
    
    // MARK: - Métodos del protocolo agrega pais
    
    func agregaCoordenada(coordenada: Coordenada) {
        listaCoordenadas.append(coordenada)
        tableView.reloadData()
    }
    
    
}

