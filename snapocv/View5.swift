//
//  View5.swift
//  snapocv
//
//  Created by Dominik Grafik on 25.07.2016.
//  Copyright © 2016 Dominik Grafik. All rights reserved.
//

import UIKit

class View5: UIViewController,UITextFieldDelegate {

    
    @IBOutlet weak var myTextField1: UITextField!
    @IBOutlet weak var mySwitch1: UISwitch!
    
    @IBOutlet weak var myTextField2: UITextField!
    @IBOutlet weak var mySwitch2: UISwitch!
    
    @IBOutlet weak var myTextField3: UITextField!
    @IBOutlet weak var mySwitch3: UISwitch!
    
    @IBAction func buttonClicked(sender: UIButton) {
        if mySwitch1.on {
            myTextField1.text = ""
            mySwitch1.setOn(false, animated:true)
        } else {
            myTextField1.text = "New Technology"
            mySwitch1.setOn(true, animated:true)
        }
        
        if mySwitch2.on {
            myTextField2.text = ""
            mySwitch2.setOn(false, animated:true)
        } else {
            myTextField2.text = "Sport"
            mySwitch2.setOn(true, animated:true)
        }
        
        if mySwitch3.on {
            myTextField3.text = ""
            mySwitch3.setOn(false, animated:true)
        } else {
            myTextField3.text = "Economics"
            mySwitch3.setOn(true, animated:true)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mySwitch1.addTarget(self, action: #selector(View5.stateChanged(_:)), forControlEvents: UIControlEvents.ValueChanged)
        
        mySwitch2.addTarget(self, action: #selector(View5.stateChanged1(_:)), forControlEvents: UIControlEvents.ValueChanged)
        
         mySwitch3.addTarget(self, action: #selector(View5.stateChanged2(_:)), forControlEvents: UIControlEvents.ValueChanged)
        
        self.myTextField1.delegate = self;
        self.myTextField2.delegate = self;
        self.myTextField3.delegate = self;
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func stateChanged(switchState: UISwitch) {
        if switchState.on {
            myTextField1.text = "New Technology"
        } else {
            myTextField1.text = ""
        }
    }
    
    func stateChanged1(switchState: UISwitch) {
        if switchState.on {
            myTextField2.text = "Sport"
        } else {
            myTextField2.text = ""
        }
    }

    func stateChanged2(switchState: UISwitch) {
        if switchState.on {
            myTextField3.text = "Economics"
        } else {
            myTextField3.text = ""
        }
    }
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    

}
