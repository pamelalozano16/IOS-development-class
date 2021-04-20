//
//  ChangeBackgroundVC.swift
//  tarea3
//
//  Created by Pamela on 08/03/21.
//

import UIKit

class ChangeBackgroundVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        let viewController = segue.destination as! ViewController
        viewController.backColor = (sender as! UIButton).backgroundColor
        
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
