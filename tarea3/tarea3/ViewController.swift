//
//  ViewController.swift
//  tarea3
//
//  Created by Pamela on 08/03/21.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var fotoMain: UIImageView!
    var img : UIImage!
    var result : String!
    var actionL : String!
    @IBOutlet weak var viewInferior: UIView!
    var backColor : UIColor!
    @IBOutlet weak var actionLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func unwindEditar(segure: UIStoryboardSegue) {
        fotoMain.image = img
        resultLabel.text = result
        actionLabel.text = actionL
        viewInferior.backgroundColor = backColor
    }
    @IBAction func unwindBackground(segure: UIStoryboardSegue) {
        viewInferior.backgroundColor = backColor
    }
    


}

