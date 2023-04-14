//
//  ViewController.swift
//  TipsyApp
//
//  Created by Mark Nevmerzhitskiy on 13.04.2023.
//

import UIKit

class ViewController: UIViewController {
    
    var tip = 0.0
    var peopleCount = 0
    
    //MARK: Actions
    
    @IBAction func tipsyButtonAction(_ sender: UIButton) {
        
        zeroButton.isSelected = false
        tenButton.isSelected = false
        twentyButton.isSelected = false
        
        sender.isSelected = true
        
        let title = String(sender.currentTitle!)
        
        let tip = Double(title.dropLast())!/100
        
        self.tip = tip
        
    }
    
    @IBAction func stepperChanged(_ sender: UIStepper) {
        
        peopleCountLabel.text = String(format: "%.0f", sender.value)

        self.peopleCount = Int(String(format: "%.0f", sender.value))!
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        _ = Double(inputField.text!)! * (1 + self.tip) / Double(self.peopleCount)
    }
    
    //MARK: Outlets
    
    @IBOutlet weak var inputField: UITextField!
    @IBOutlet weak var zeroButton: UIButton!
    @IBOutlet weak var tenButton: UIButton!
    @IBOutlet weak var twentyButton: UIButton!
    @IBOutlet weak var peopleCountLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

