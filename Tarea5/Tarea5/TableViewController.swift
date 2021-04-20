//
//  TableViewController.swift
//  Tarea5
//
//  Created by Pamela on 06/04/21.
//

import UIKit

class TableViewController: UITableViewController, protocoloAgregaPais {

    
    var listaPaises = [
        Pais(nombre: "México", codigo: "MX", bandera: UIImage(named: "mx")),
        Pais(nombre: "Italia", codigo: "IT", bandera: UIImage(named: "it")),
        Pais(nombre: "Corea del sur", codigo: "KR", bandera: UIImage(named: "kr")),
        Pais(nombre: "India", codigo: "IN", bandera: UIImage(named: "in")),
        Pais(nombre: "Canada", codigo: "CA", bandera: UIImage(named: "ca")),
        Pais(nombre: "Francia", codigo: "FR", bandera: UIImage(named: "fr")),
        Pais(nombre: "España", codigo: "ES", bandera: UIImage(named: "es")),
        Pais(nombre: "Argentina", codigo: "AR", bandera: UIImage(named: "ar")),
        Pais(nombre: "Australia", codigo: "AU", bandera: UIImage(named: "au")),
        Pais(nombre: "Estados Unidos", codigo: "US", bandera: UIImage(named: "us")),
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        title = "Países"
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return listaPaises.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath) as! TableViewCell
        cell.textLabel?.text = listaPaises[indexPath.row].nombre
        if let foto = listaPaises[indexPath.row].bandera {
            cell.imagen.image = foto
        }
        else {
            cell.imagen.image = UIImage(named: "blankflag")
        }
        // Configure the cell...

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

   
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "mostrar" {
        let vistaDetalle = segue.destination as! ViewController
        let indice = tableView.indexPathForSelectedRow!
            vistaDetalle.unPais = listaPaises[indice.row]
        }
        else {
            let vistaAgregar = segue.destination as! ViewControllerAgregar
            vistaAgregar.delegado = self
        }
    }
    
    // MARK: - Métodos del protocolo agrega pais
    
    func agregaPais(pais: Pais) {
        listaPaises.append(pais)
        tableView.reloadData()
    }

}
