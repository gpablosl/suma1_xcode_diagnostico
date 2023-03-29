//
//  ViewController.swift
//  sumas2
//
//  Created by Alumno ULSA on 29/03/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtNumero1: UITextField!
    
    @IBOutlet weak var txtNumero2: UITextField!
    
    @IBOutlet weak var lblResultado: UILabel!
    
    @IBAction func btnSuma(_ sender: Any) {
        let txtNumero1  = txtNumero1.text!
        let txtNumero2 = txtNumero2.text!

        let numero1 = Float(txtNumero1) ?? 0.0
        let numero2 = Float(txtNumero2) ?? 0.0

        let suma = numero1 + numero2
        lblResultado.text = "\(suma)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

