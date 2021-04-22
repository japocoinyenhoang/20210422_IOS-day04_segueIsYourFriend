//
//  ViewController.swift
//  prueba4Navegacion
//
//  Created by Tardes on 21/4/21.
//

import UIKit

class ViewController: UIViewController {

    var color = "negro";
    
 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
       
    }


    @IBAction func btnRojoAction(_ sender: Any) {
        //performSegue(withIdentifier: "VCRojoViewController", sender: self)
        color = "rojo"
        performSegue(withIdentifier: "VCDinamico", sender: self)
    }
    
    @IBAction func btnAzulAction(_ sender: Any) {
        //performSegue(withIdentifier: "VCAzul", sender: self)
        color = "azul"
        performSegue(withIdentifier: "VCDinamico", sender: self)
    }
    
    @IBAction func btnVerdeAction(_ sender: Any) {
        //performSegue(withIdentifier: "VCVerdeViewController", sender: self)
        color = "verde"
        performSegue(withIdentifier: "VCDinamico", sender: self)
    }
    
    override func prepare (for segue: UIStoryboardSegue, sender: Any?) {
     //se envia siempre que existe un segue
        
        //identifico el segue
        //if segue.identifier == "VCRojoViewController" {
        if segue.identifier == "VCDinamico" {
            
        //al ejecutarse el segue
            if let destino = segue.destination as? VCDinamico {
                destino.data = color
            }
            
        }
    }
    
}

