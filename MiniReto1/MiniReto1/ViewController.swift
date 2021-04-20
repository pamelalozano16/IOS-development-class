//
//  ViewController.swift
//  MiniReto1
//
//  Created by Pamela on 11/03/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var label2: UILabel!

   var arr = [Int](repeating: 0, count:14)
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 11;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda") as! TableViewCell
        
        let i = indexPath.row
        
        cell.textLabel!.text = String(i+2) + ": "
        cell.detailTextLabel!.text = String( arr[i+2] )
        cell.progressBar.progress=( Float(arr[i+2]) / 50)
        
        if(0<(indexPath.row+2) % 2){
            cell.progressBar.progressTintColor = UIColor(ciColor: .green)
        }

        return cell
        
    }
    

    @IBAction func tirarDados(_ sender: Any) {
        
        let number1 = Int.random(in: 1..<7)
        let number2 = Int.random(in: 1..<7)
        
        image1.image=UIImage(named: String(number1))
        image2.image=UIImage(named: String(number2))
        label1.text=String(number1)
        label2.text=String(number2)
        
        arr[number1+number2]+=1

        //self.tableView.reloadRows(at: [indexPath], with: UITableView.RowAnimation.none)
        /*
        Era mas eficiente actualizar la row solamente pero si hago eso
        se actualiza tambien el color y cambia
        (Por que lo estoy cambiando a base del index)
         */
        
        self.tableView.reloadData()
        
        }
    
        
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }



}

