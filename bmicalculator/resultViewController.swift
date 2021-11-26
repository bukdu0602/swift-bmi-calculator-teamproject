//
//  resultViewController.swift
//  bmicalculator
//
//  Created by Ryan Lim on 2021-11-26.
//

import UIKit

class resultViewController: UIViewController {
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    @IBOutlet var backgroundView: UIView!
    var bmiValue: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = String(format: "%.1f", Float(bmiValue!)!)
        adviceLabel.text = getAdvice()

    }
    
    func getAdvice() -> String{
        if Float(bmiValue!)! < 18.5 {
            backgroundView.backgroundColor = UIColor.blue
           return "Low"
        } else if Float(bmiValue!)! < 24.9 {
            backgroundView.backgroundColor = UIColor.green
            return "Normal"

        } else {
            backgroundView.backgroundColor = UIColor.red
            return "High"

        }
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)

    }
    

}
