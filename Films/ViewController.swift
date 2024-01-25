//
//  ViewController.swift
//  Films
//
//  Created by Patrick Alves on 1/25/24.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var txtLogin: UITextField!
    
    
    @IBOutlet weak var txtPassword: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func openAction(_ sender: Any) {
        
        if (txtLogin.text == "patrick" &&
            txtPassword.text == "1234"){
            performSegue(withIdentifier: "tela2", sender: self)
       
        } else {
            let alert = UIAlertController(title: "Alert", message: "Erro no Login/Senha", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
}


