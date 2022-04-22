//
//  ViewController.swift
//  svl
//
//  Created by Гость on 15.04.2022.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var bAC: UIButton!
    @IBOutlet weak var b7: UIButton!
    @IBOutlet weak var b8: UIButton!
    @IBOutlet weak var b9: UIButton!
    @IBOutlet weak var b4: UIButton!
    @IBOutlet weak var b5: UIButton!
    @IBOutlet weak var b6: UIButton!
    @IBOutlet weak var b1: UIButton!
    @IBOutlet weak var b2: UIButton!
    @IBOutlet weak var b3: UIButton!
    @IBOutlet weak var b0: UIButton!
    @IBOutlet weak var delit: UIButton!
    @IBOutlet weak var ymnj: UIButton!
    @IBOutlet weak var min: UIButton!
    @IBOutlet weak var plus: UIButton!
    @IBOutlet weak var ravno: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var buttonChangeResultLabel: UIStepper!
    
    
    var numberOne = ""
    var numberTwo = ""
    var operand = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bAC.layer.cornerRadius = 36
        b1.layer.cornerRadius = 36
        b2.layer.cornerRadius = 36
        b3.layer.cornerRadius = 36
        b4.layer.cornerRadius = 36
        b5.layer.cornerRadius = 36
        b6.layer.cornerRadius = 36
        b7.layer.cornerRadius = 36
        b8.layer.cornerRadius = 36
        b9.layer.cornerRadius = 36
        b0.layer.cornerRadius = 36
        delit.layer.cornerRadius = 36
        ymnj.layer.cornerRadius = 36
        min.layer.cornerRadius = 36
        plus.layer.cornerRadius = 36
        ravno.layer.cornerRadius = 36
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func inputNumber(_ sender: UIButton) {
        if operand.isEmpty {
            numberOne = numberOne + (sender.titleLabel?.text)!
            resultLabel.text = numberOne
        }
    else
        {
            numberTwo = numberTwo + (sender.titleLabel?.text)!
            resultLabel.text = numberTwo
        }
                    }
    
    @IBAction func inputOperand(_ sender: UIButton) {
        operand = sender.titleLabel?.text as!
                String
    }
    @IBAction func clearAction(_ sender: UIButton) {
        numberTwo = ""
        numberOne = ""
        operand = ""
        resultLabel.text = "0"
    }
    @IBAction func resultAction(_ sender: UIButton) {
        var result = 0.0
        
        switch operand {
        case "/":
            result = Double (numberOne)! / Double (numberTwo)!
        case "+":
            result = Double (numberOne)! + Double (numberTwo)!
        case "-":
            result = Double (numberOne)! - Double (numberTwo)!
        case "*":
            result = Double (numberOne)! * Double (numberTwo)!
        default:
            break
        }
        
        if result .truncatingRemainder(dividingBy: 1.0) == 0.0 {
            resultLabel.text = String(Int(result))
        }
        else
        {
            resultLabel.text = String(result)
        }
    }
    @IBAction func changeResultLabel(_ sender: UIStepper) {
        let font = resultLabel.font?.fontName
        let fontSize = CGFloat(sender.value)
        
        resultLabel.font = UIFont(name: font!, size: fontSize)
    }
    @IBAction func hiddenButtons(_ sender: Any) {
        b0.isHidden = !b0.isHidden
        b1.isHidden = !b1.isHidden
        b2.isHidden = !b2.isHidden
        b3.isHidden = !b3.isHidden
        b4.isHidden = !b4.isHidden
        b5.isHidden = !b5.isHidden
        b6.isHidden = !b6.isHidden
        b7.isHidden = !b7.isHidden
        b8.isHidden = !b8.isHidden
        b9.isHidden = !b9.isHidden
        bAC.isHidden = !bAC.isHidden
        delit.isHidden = !delit.isHidden
        ymnj.isHidden = !ymnj.isHidden
        min.isHidden = !min.isHidden
        plus.isHidden = !plus.isHidden
        ravno.isHidden = !ravno.isHidden
        buttonChangeResultLabel.isHidden = !buttonChangeResultLabel.isHidden
    }
}

