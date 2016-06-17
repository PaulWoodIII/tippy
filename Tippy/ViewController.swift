//
//  ViewController.swift
//  Tippy
//
//  Created by Paul Wood on 6/15/16.
//  Copyright © 2016 Paul Wood. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    // 😵😷😥😶😏😀😍
    //0,3,9,10,15,17,20
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var billLabel: UILabel!
    @IBOutlet weak var moodLabel: UILabel!
    @IBOutlet weak var moodSlider: UISlider!
    
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBAction func sliderUpdated(sender: AnyObject) {
        print(billTextField.text);
        var bill = Double(billTextField.text!)!
        var tip : Double = 0.0
        print(bill)
        
        if moodSlider.value < 0.14 {
            moodLabel.text = "😵"
        }
        else if moodSlider.value < 0.28 {
            moodLabel.text = "😷"
            tip = bill * 0.03
        }
        else if moodSlider.value < 0.42 {
            moodLabel.text = "😥"
            tip = bill * 0.09
        }
        else if moodSlider.value < 0.56 {
            moodLabel.text = "😶"
            tip = bill * 0.1
        }
        else if moodSlider.value < 0.70 {
            moodLabel.text = "😏"
            tip = bill * 0.15
        }
        else if moodSlider.value < 0.84 {
            moodLabel.text = "😀"
            tip = bill * 0.17
        }
        else if moodSlider.value <= 1.0 {
            moodLabel.text = "😍"
            tip = bill * 0.20
        }
        tipLabel.text = "Tip: \(tip)  Total: \(bill + tip)"
        print(tipLabel.text)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

