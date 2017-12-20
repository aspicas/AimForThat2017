//
//  ViewController.swift
//  AimForThat2017
//
//  Created by David Garcia on 12/19/17.
//  Copyright © 2017 David Garcia. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {

    @IBOutlet weak var slider: UISlider!
    
    var currentValue: Int = 0
    var targetValue: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startNewRound()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showAlert() {
        let message = """
            El valor del slider es \(self.currentValue)
            El valor del target es \(self.targetValue)
        """
        let alert = UIAlertController(title: "Hola mundo", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "Genial!", style: .default, handler: nil)
        alert.addAction(action)
        
        present(alert, animated: true)
        
        startNewRound()
    }
    
    @IBAction func sliderMove(_ sender: UISlider) {
        self.currentValue = lroundf(sender.value)
    }
    
    func startNewRound() {
        self.targetValue = 1 + Int(arc4random_uniform(100)) // 1 + numeros aleatorios del 0 al 99
        self.currentValue = 50
        self.slider.value = Float(self.currentValue)
    }
    
}

