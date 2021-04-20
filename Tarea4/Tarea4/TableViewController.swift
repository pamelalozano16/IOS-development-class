//
//  TableViewController.swift
//  Tarea4
//
//  Created by Pamela on 24/03/21.
//

import UIKit

class TableViewController: UITableViewController {
    
    var listaPaises = [
        Pais(nombre: "México", bandera: UIImage(named: "mx")),
        Pais(nombre: "Italia", bandera: UIImage(named: "it")),
        Pais(nombre: "Corea del sur", bandera: UIImage(named: "kr")),
        Pais(nombre: "India", bandera: UIImage(named: "in")),
        Pais(nombre: "Canada", bandera: UIImage(named: "ca")),
        Pais(nombre: "Francia", bandera: UIImage(named: "fr")),
        Pais(nombre: "España", bandera: UIImage(named: "es")),
        Pais(nombre: "Argentina", bandera: UIImage(named: "ar")),
        Pais(nombre: "Australia", bandera: UIImage(named: "au")),
        Pais(nombre: "Estados Unidos", bandera: UIImage(named: "us")),
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Paises"
        
        self.navigationItem.leftBarButtonItem = self.editButtonItem

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return listaPaises.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath) as! TableViewCell
 
        cell.imagen.image = listaPaises[indexPath.row].bandera!
        

        // Configure the cell...

        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vistaDetalle = segue.destination as! ViewControllerDetalle
        
        let indice = tableView.indexPathForSelectedRow!
        
        vistaDetalle.unPais = listaPaises[indice.row]
    }
    

    
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            listaPaises.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    

    
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        let tmp = listaPaises[fromIndexPath.row]
        listaPaises[fromIndexPath.row] = listaPaises[to.row]
        listaPaises[to.row] = tmp
    }
    

    
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
