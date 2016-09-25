//
//  View3.swift
//  snapocv
//
//  Created by Dominik Grafik on 24.07.2016.
//  Copyright © 2016 Dominik Grafik. All rights reserved.
//

import UIKit

class View3: UIViewController {
    
    var helper = 0
    
    @IBOutlet weak var progressView: UIProgressView!
    @IBOutlet weak var progressView1: UIProgressView!
    @IBOutlet weak var progressView2: UIProgressView!
    @IBOutlet weak var progressView3: UIProgressView!
    @IBOutlet weak var progressView4: UIProgressView!
    @IBOutlet weak var progressView5: UIProgressView!
    
    var counter:Int = 0 {
        didSet{
            let fractionalProgress = Float(counter)/100.0
            
            let animated = counter != 0
            
            progressView.setProgress(fractionalProgress, animated: animated)
           
            
        }
    }
    
    var counter1:Int = 0{
        didSet{
            let fractionalProgress = Float(counter1)/100.0
            
            let animated = counter1 != 0
            
            progressView1.setProgress(fractionalProgress, animated: animated)
        }
    }
    
    var counter2:Int = 0 {
        didSet{
            let fractionalProgress = Float(counter2)/100.0
            
            let animated = counter2 != 0
            
            progressView2.setProgress(fractionalProgress, animated: animated)
        }
    }
    
    var counter3:Int = 0 {
        didSet{
            let fractionalProgress = Float(counter3)/100.0
            
            let animated = counter3 != 0
            
            progressView3.setProgress(fractionalProgress, animated: animated)
            
            
        }
    }
    var counter4:Int = 0 {
        didSet{
            let fractionalProgress = Float(counter4)/100.0
            
            let animated = counter4 != 0
            
            progressView4.setProgress(fractionalProgress, animated: animated)
            
            
        }
    }
    
    var counter5:Int = 0 {
        didSet{
            let fractionalProgress = Float(counter5)/100.0
            
            let animated = counter5 != 0
            
            progressView5.setProgress(fractionalProgress, animated: animated)
            
            
        }
    }



   
    @IBAction func startCount(sender: UIButton) {

        self.counter = 0
        self.counter1 = 0
        self.counter2 = 0
        self.counter3 = 0
        self.counter4 = 0
        self.counter5 = 0
        
        
        for i in 0..<60{
            dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND,0), {
                sleep(1)
                dispatch_async(dispatch_get_main_queue(), {
                    self.counter += 1
                    
                    return
                })
            })
            if i == 59{
                self.helper = 1
                print("suka")
            }
        }
        
        if self.helper == 1{
            print("druga suka")
            for j in 0..<69{
                dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND,0), {
                    sleep(1)
                    dispatch_async(dispatch_get_main_queue(), {
                        self.counter1 += 1
                        
                        return
                })
            })
                if j == 68{
                    self.helper = 2
                }
        }
            
            
    }
        
        if self.helper == 2{
            for k in 0..<63{
            dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0), {
                sleep(1)
                
                dispatch_async(dispatch_get_main_queue(), {
                    self.counter2 += 1
                    
                    return
                })
            })
                if k == 62{
                    self.helper = 3
                }
        }
    }
        if self.helper == 3{
        for o in 0..<52{
            dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0), {
                sleep(1)
                dispatch_async(dispatch_get_main_queue(), {
                    self.counter3 += 1
                    return
                })
            })
            if o == 51{
                self.helper = 4
            }
            
        }
    }
        if self.helper == 4{
        for s in 0..<33{
            dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0), {
                sleep(1)
                dispatch_async(dispatch_get_main_queue(), {
                    self.counter4 += 1
                    return
                })
            })
            if s == 32{
                self.helper = 5
            }
            
        }
    }
        if self.helper == 5{
        for u in 0..<47{
            dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0), {
                sleep(1)
                dispatch_async(dispatch_get_main_queue(), {
                    self.counter5 += 1
                    return
                })
            })
        }
    }
}
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        progressView.setProgress(0, animated: true)
        progressView1.setProgress(0, animated: true)
        progressView2.setProgress(0, animated: true)
        progressView3.setProgress(0, animated: true)
        progressView4.setProgress(0, animated: true)
        progressView5.setProgress(0, animated: true)
        
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
