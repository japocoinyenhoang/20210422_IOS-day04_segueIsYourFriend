//
//  VCDinamico.swift
//  prueba4Navegacion
//
//  Created by Tardes on 22/4/21.
//

import UIKit

class VCDinamico: UIViewController {
    var data:String?
    
    @IBOutlet weak var txt_dinamico: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.navigationItem.title = "PANTALLA ROJA"
        self.view.backgroundColor = .black
        
        if data != nil {
            txt_dinamico.textAlignment = NSTextAlignment.center
            
            switch data {
            case "rojo":
                self.navigationItem.title = "PANTALLA ROJA"
                self.view.backgroundColor = .red
            
            case "azul":
                self.navigationItem.title = "PANTALLA AZUL"
                self.view.backgroundColor = .blue
            
            case "verde":
                self.navigationItem.title = "PANTALLA ROJA"
                self.view.backgroundColor = .green
            default: self.view.backgroundColor = .black
            }
        
        } else {
            txt_dinamico.isHidden = true
        }
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
