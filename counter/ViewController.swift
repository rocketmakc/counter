//
//  ViewController.swift
//  counter
//
//  Created by Maxim Erokhin on 15.05.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var counterLabel: UILabel!
    
    
    private var count = 0
    
    func getCurrentDate() -> String {
        
        let date = Date()
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .short
        dateFormatter.timeStyle = .short
        dateFormatter.locale = Locale(identifier: "ru_RU")
        
        let dateString = dateFormatter.string(from: date)
        
        return dateString
        
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    
    @IBAction func plusButton(_ sender: Any) {
        count = count + 1
        counterLabel.text = "\(count)"
        
        let date = getCurrentDate()
        
        textField.text += "\(date): значение изменено на +1 "
        
    }
   
    @IBAction func minusButton(_ sender: Any) {
        count = count - 1
        counterLabel.text = "\(count)"
        
        let date = getCurrentDate()
        
        if count < 0 {
        textField.text += "\(date): попытка уменьшить значение счётчика ниже 0                                                        "
        } else {
            
            textField.text += "\(date): значение изменено на -1 "
        }
        
        
        
    }
    
    @IBAction func resetButton(_ sender: Any) {
        count = 0
        counterLabel.text = "\(count)"
      
        let date = getCurrentDate()
        
        textField.text += "\(date): значение сброшено           "
        
    }
    
    
    @IBOutlet weak var textField: UITextView!
    
    
    
}

