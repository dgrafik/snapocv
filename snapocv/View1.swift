//
//  View1.swift
//  snapocv
//
//  Created by Dominik Grafik on 24.07.2016.
//  Copyright © 2016 Dominik Grafik. All rights reserved.
//

import UIKit
import LocalAuthentication

class View1: UIViewController {

    
    //@IBOutlet weak var textView: UITextView!
    //textView.dataDetectorTypes = UIDataDetectorTypeAll;
    
    @IBAction func buttonTaped(sender: AnyObject) {
        let alertController = UIAlertController(title:"Instruction:",message:"Navigate with swipe down and right",preferredStyle:UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "Let's go to check it!" ,style: UIAlertActionStyle.Default, handler: nil))
        
        self.presentViewController(alertController, animated: true, completion: nil)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
