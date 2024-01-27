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

    func createFilms() {
        
        let film1 = Film(name: "O Senhor Dos Aneis: O Retorno do Rei", imageName: "osenhordosaneis", isMyfavorite: true)
        let film2 = Film(name: "Matrix", imageName: "matrix", isMyfavorite: true)
        let film3 = Film(name: "Jhon Wick", imageName: "jhonwick", isMyfavorite: true)
        let film4 = Film(name: "Pantera Negra", imageName: "panteranegra", isMyfavorite: true)
        let film5 = Film(name: "Constantine", imageName: "constantine", isMyfavorite: true)
        let film6 = Film(name: "Star Wars", imageName: "starwars", isMyfavorite: true)
        let film7 = Film(name: "O Hobbit", imageName: "ohobbit", isMyfavorite: true)
        let film8 = Film(name: "Gente Grande", imageName: "gentegrande", isMyfavorite: true)
        let film9 = Film(name: "Se beber nao case", imageName: "sebebernaocase", isMyfavorite: true)
        let film10 = Film(name: "De volta para o futuro", imageName: "devoltaparaofuturo", isMyfavorite: true)
        let film11 = Film(name: "joker", imageName: "joker", isMyfavorite: true)
        let film12 = Film(name: "Batman", imageName: "Batman", isMyfavorite: true)
        let film13 = Film(name: "Homen de ferro", imageName: "homendeferro", isMyfavorite: true)
        let film14 = Film(name: "Guardioes da galaxia", imageName: "guardioesdagalaxia", isMyfavorite: true)
        let film15 = Film(name: "Vingadores", imageName: "vingadores", isMyfavorite: true)
        let film16 = Film(name: "Loki", imageName: "loki", isMyfavorite: true)
        
        DataFilms.films.append(film1)
        DataFilms.films.append(film2)
        DataFilms.films.append(film3)
        DataFilms.films.append(film4)
        DataFilms.films.append(film5)
        DataFilms.films.append(film6)
        DataFilms.films.append(film7)
        DataFilms.films.append(film8)
        DataFilms.films.append(film9)
        DataFilms.films.append(film10)
        DataFilms.films.append(film11)
        DataFilms.films.append(film12)
        DataFilms.films.append(film13)
        DataFilms.films.append(film14)
        DataFilms.films.append(film15)
        DataFilms.films.append(film16)
    }

    @IBAction func openAction(_ sender: Any) {
        
        if (txtLogin.text == "patrick" &&
            txtPassword.text == "1234"){
            DataFilms.films.removeAll()
            createFilms()
            performSegue(withIdentifier: "tela2", sender: self)
       
        } else {
            let alert = UIAlertController(title: "Alert", message: "Erro no Login/Senha", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
}


