//
//  ViewController.swift
//  Easy Calc
//
//  Created by Gokul Nair on 15/06/20.
//  Copyright © 2020 Gokul Nair. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var wageTextField: UITextField!
    @IBOutlet weak var priceTextField: UITextField!
    @IBOutlet weak var hoursLabel: UILabel!
    @IBOutlet weak var hours: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        wageTextField.delegate = self
        priceTextField.delegate = self
        
        let calculateBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calculateBtn.backgroundColor = #colorLiteral(red: 1, green: 0.5781051517, blue: 0, alpha: 1)
        calculateBtn.setTitle("Calculate", for: .normal)
        calculateBtn.setTitleColor(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), for: .normal)
        calculateBtn.addTarget(self, action: #selector(ViewController.calculate), for: .touchUpInside)
        
        priceTextField.inputAccessoryView = calculateBtn
        wageTextField.inputAccessoryView = calculateBtn
        
        hoursLabel.isHidden = true
        hours.isHidden = true
        
    }

    @objc func calculate() {
        
        if let wageTxt = wageTextField.text , let priceTxt = priceTextField.text {
            if let wage = Double(wageTxt), let price = Double(priceTxt) {
                
                view.endEditing(true)
                hoursLabel.isHidden=false
                hours.isHidden=false
                
                hoursLabel.text = "\(getHours(forWage: wage, price: price))"
                
            }
        }
      
    }
    
    @IBAction func clearButton(_ sender: Any) {
        
        priceTextField.text?.removeAll()
        wageTextField.text?.removeAll()
        hoursLabel.isHidden = true
        hours.isHidden = true
        
    }
 //MARK:- calculator function
    func getHours(forWage wage:Double, price:Double)-> Int {
      
      return Int(ceil(price/wage))
      
    }
//MARK:- KEYBOARD UTILLITIES
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    //hide keyboard by return key
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        wageTextField.resignFirstResponder()
        priceTextField.resignFirstResponder()
        return true
    }
}

