//
//  ViewController.swift
//  Act1_A01176970
//
//  Created by Pamela on 22/02/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cortina: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func moveSlider(_ sender: UISlider) {
        //373, 86
        //36, 86
        let currentValue = Int(sender.value*100);
        
        UIView.animate(withDuration: 0.5) {
            self.cortina.frame.origin.x = CGFloat(36+(3.39*CGFloat(currentValue)));
        }
        
        
    }
    @IBAction func changeBackground(_ sender: UISegmentedControl) {
        
        switch sender.selectedSegmentIndex{
        case 0:
            UIView.animate(withDuration: 0.5) {
                self.view.backgroundColor=UIColor.white;
            }
        case 1:
            UIView.animate(withDuration: 0.5) {
                self.view.backgroundColor=UIColor.black;
            }
        default:
            break;
        }
    }
    
}

