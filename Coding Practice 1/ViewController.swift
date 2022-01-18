//
//  ViewController.swift
//  Coding Practice 1
//
//  Created by John Pill on 18/01/2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var timeTextField: UITextField!
    
    var totalMins = 0.0
    var totalHours = 0.0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    func updateUI() {
        totalHours = totalMins / 60
        let roundedTotalHours = round(totalHours * 10) / 10.0
        timeLabel.text = "\(roundedTotalHours) hours"
    }
    
    @IBAction func addTimeButton(_ sender: Any) {
        
        let timeToAdd = timeTextField.text!
        totalMins += Double(timeToAdd)!
        updateUI()
    }
}

