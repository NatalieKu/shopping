//
//  ViewController.swift
//  shopping
//
//  Created by MEI KU on 2017/8/2.
//  Copyright © 2017年 Natalie KU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var watch1: UIImageView!
    
    @IBOutlet weak var watch2: UIImageView!
    
    
    @IBOutlet weak var bracelet: UIImageView!
    
    
    @IBOutlet weak var ring: UIImageView!
    
    @IBOutlet weak var watch1Qty: UILabel!
    
    @IBOutlet weak var watch2Qty: UILabel!
    
    @IBOutlet weak var braceletQty: UILabel!
    
    @IBOutlet weak var ringQty: UILabel!
    
    @IBOutlet weak var totalCostLabel: UILabel!
    
    var myValue1:Int=0
    var myValue2:Int=0
    var myValue3:Int=0
    var myValue4:Int=0
    
    
    @IBAction func watch1Stepper(_ sender: UIStepper) {
        
        myValue1 = Int(sender.value)
        watch1Qty.text = "\(myValue1)"
        calculate()
        
    }
    
    @IBAction func watch2Stepper(_ sender: UIStepper) {
        
        myValue2 = Int(sender.value)
        watch2Qty.text = "\(myValue2)"
        calculate()
        
    }
    
    @IBAction func braceletStepper(_ sender: UIStepper) {
        
        myValue3 = Int(sender.value)
        braceletQty.text = "\(myValue3)"
        calculate()
        
        
        
    }
    
    
    @IBAction func ringStepper(_ sender: UIStepper) {
        
        myValue4 = Int(sender.value)
        ringQty.text = "\(myValue4)"
        
        calculate()
        
        
        
    }
    
    func calculate() {
        let sum = 23900 * myValue1 + 28500 * myValue2 + 2850 * myValue3 + 5800 * myValue4
        totalCostLabel.text = "Total: $\(sum)"
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

