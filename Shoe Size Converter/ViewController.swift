//
//  ViewController.swift
//  Shoe Size Converter
//
//  Created by Victor Yang on 08.05.15.
//  Copyright (c) 2015 Victor Yang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var convertedEUMenShoeSize: UILabel!
    @IBOutlet weak var enterUSMenShoeSize: UITextField!
    @IBOutlet weak var convButton: UIButton!
    
    @IBOutlet weak var enterUSWomenShoeSize: UITextField!
    @IBOutlet weak var convertedWomenShoeSize: UILabel!
    @IBOutlet weak var womenButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButtonPressed(sender: UIButton) {
        
        //Converting Men's shoe size
        let convRate = 30
        convertedEUMenShoeSize.text = "\(enterUSMenShoeSize.text.toInt()! + convRate) in European Size"
        convertedEUMenShoeSize.hidden = false
        enterUSMenShoeSize.resignFirstResponder()
        
    }

    @IBAction func WomenButton(sender: UIButton) {
        
        //converting women's shoe sizes
        let convRate  = 30.5
        convertedWomenShoeSize.text = "\(Double((enterUSWomenShoeSize.text as NSString).doubleValue) + convRate) in Eu"
        convertedWomenShoeSize.hidden = false
        enterUSWomenShoeSize.resignFirstResponder()
    }
   
    
    
}

