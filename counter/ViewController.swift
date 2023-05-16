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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func plusButton(_ sender: Any) {
        count = count + 1
        counterLabel.text = "\(count)"
        
    }
   
    @IBAction func minusButton(_ sender: Any) {
        count = count - 1
        counterLabel.text = "\(count)"
        
    }
    
    @IBAction func resetButton(_ sender: Any) {
        count = 0
        counterLabel.text = "\(count)"
      
    }
    
    
    @IBOutlet weak var textField: UITextView!
    
}

