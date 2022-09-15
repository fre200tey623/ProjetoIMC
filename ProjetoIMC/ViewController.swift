//
//  ViewController.swift
//  ProjetoIMC
//
//  Created by Student on 13/09/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textPeso: UITextField!
    
    @IBOutlet weak var textAltura: UITextField!
    
    @IBOutlet weak var labelResultado: UILabel!
    
    
    @IBAction func botaoCalcular(_ sender: Any) {
    
        let valorPeso = Double(textPeso.text!)
        let valorAltura = Double(textAltura.text!)
        
        let imc = (valorPeso! / (valorAltura! * valorAltura!))
        
        
        if (imc <= 18.5){
            labelResultado.text = "\(String(format: "%.1f",imc)) (Abaixo do peso)"
        }
        else if (imc > 18.5 && imc < 24.9){
            labelResultado.text = "\(String(format: "%.1f",imc)) (Peso ideal (parabens!!))"
        }
        else if (imc >= 25.0 && imc <= 29.9){
            labelResultado.text = "\(String(format: "%.1f",imc)) (Levemente acima do peso)"
        }
        else if (imc >= 30.0 && imc <= 34.9){
            labelResultado.text = "\(String(format: "%.1f",imc)) (Obsedidade grau I)"
        }
        else if (imc >= 35.0 && imc <= 39.9){
            labelResultado.text = "\(String(format: "%.1f",imc)) (Obesidade grau II (severa))"
        }
        else{
            labelResultado.text = "\(String(format: "%.1f",imc)) (Obesidade III (morbida))"
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

