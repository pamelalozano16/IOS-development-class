//
//  ViewControllerAgregar.swift
//  Tarea5
//
//  Created by Pamela on 07/04/21.
//

import UIKit

protocol protocoloAgregaPais {
    func agregaPais(pais: Pais)
}

class ViewControllerAgregar: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    @IBOutlet weak var imgFoto: UIImageView!
    @IBOutlet weak var tfNombre: UITextField!
    @IBOutlet weak var tfCodigo: UITextField!
    
    var delegado : protocoloAgregaPais!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func guardar(_ sender: UIButton) {
        var pais = Pais(nombre: tfNombre.text!, codigo: tfCodigo.text!, bandera: imgFoto.image)
        delegado.agregaPais(pais: pais)
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func agregarFotoUsuario(_ sender: UITapGestureRecognizer){
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        imagePicker.sourceType = .photoLibrary
        
        present(imagePicker, animated: true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    //MARK: - Métodos de delegado UIImage Picker Controller
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        let foto = info[UIImagePickerController.InfoKey.originalImage] as! UIImage
        imgFoto.image = foto
        
        dismiss(animated: true, completion: nil)
    }
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }

}
