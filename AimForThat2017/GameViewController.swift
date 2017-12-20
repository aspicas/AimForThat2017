//
//  ViewController.swift
//  AimForThat2017
//
//  Created by David Garcia on 12/19/17.
//  Copyright © 2017 David Garcia. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showAlert() {
        let alert = UIAlertController(title: "Hola mundo", message: "Este es mi juego Aim For That!", preferredStyle: .alert)
        let action = UIAlertAction(title: "Genial!5", style: .default, handler: nil)
        alert.addAction(action)
        
        present(alert, animated: true)
    }
    
    @IBAction func sliderMove(_ sender: UISlider) {
        print("El valor del slider es \(sender.value)")
    }
    
}

