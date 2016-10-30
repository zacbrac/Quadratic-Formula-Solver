//
//  ViewController.swift
//  Quadratic Formula Solver
//
//  Created by Zachary Brachmanis on 5/26/15.
//  Copyright (c) 2015 Zac Brachmanis Developments. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var paramA: UITextField!
    @IBOutlet weak var paramC: UITextField!
    @IBOutlet weak var paramB: UITextField!

    @IBOutlet weak var answerA: UILabel!
    @IBOutlet weak var answerB: UILabel!
    
    @IBAction func doQuadratic(sender: AnyObject) {
        
        let a: Double = (paramA.text! as NSString).doubleValue
        let b: Double = (paramB.text! as NSString).doubleValue
        let c: Double = (paramC.text! as NSString).doubleValue
        
        let parta: Double = (-(b) + sqrt((b*b) - (4*a*c))) / (2*a)
        let partb: Double = (-(b) - sqrt((b*b) - (4*a*c))) / (2*a)
        
        let firstAnswerString:String = String(format:"%.2f", parta)
        let secondAnswerString:String = String(format:"%.2f", partb)
        
        answerA.text = firstAnswerString
        answerB.text = secondAnswerString

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

