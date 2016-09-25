//
//  ViewController.swift
//  snapocv
//
//  Created by Dominik Grafik on 24.07.2016.
//  Copyright © 2016 Dominik Grafik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var scrollView: UIScrollView!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let V1: View1 = View1(nibName: "View1", bundle: nil)
        let V2: View2 = View2(nibName: "View2", bundle: nil)
        let V3: View3 = View3(nibName: "View3", bundle: nil)
        let V4: View4 = View4(nibName: "View4", bundle: nil)
        let V5: View5 = View5(nibName: "View5", bundle: nil)
        let V7: View7 = View7(nibName: "View7", bundle: nil)
        
        self.addChildViewController(V1)
        self.scrollView.addSubview(V1.view)
        V1.didMoveToParentViewController(self)
        
        self.addChildViewController(V2)
        self.scrollView.addSubview(V2.view)
        V2.didMoveToParentViewController(self)
        
        self.addChildViewController(V7)
        self.scrollView.addSubview(V7.view)
        V7.didMoveToParentViewController(self)
        
        self.addChildViewController(V3)
        self.scrollView.addSubview(V3.view)
        V3.didMoveToParentViewController(self)
        
        
        self.addChildViewController(V5)
        self.scrollView.addSubview(V5.view)
        V5.didMoveToParentViewController(self)
        
        self.addChildViewController(V4)
        self.scrollView.addSubview(V4.view)
        V4.didMoveToParentViewController(self)
        
        
        var V2Frame: CGRect = CGRectMake(0, 0, 1125, 1334)
        V2Frame.origin.x = self.view.frame.width
        V2.view.frame = V2Frame
        ///// odpowiada za to że po kliknięciu ekran NIE wraca do góry
        let V2Frame1: CGRect = V2.view.frame
        V2Frame.origin.y = self.view.frame.height
        V2.view.frame = V2Frame1
        //////////
        ////////////////dsfghj 
        
        var V3Frame: CGRect = CGRectMake(0, 0, 1125, 1334)
        V3Frame.origin.x = 3*self.view.frame.width
        V3.view.frame = V3Frame
        
        var V5Frame: CGRect = CGRectMake(0, 0, 1125, 1334)
        V5Frame.origin.x = 4*self.view.frame.width
        V5.view.frame = V5Frame
        
        var V4Frame: CGRect = CGRectMake(0, 0, 1125, 1334)
        V4Frame.origin.x = 5*self.view.frame.width
        V4.view.frame = V4Frame
        
        var V6Frame: CGRect = CGRectMake(0, 0, 1125, 1334)
        V6Frame.origin.x = 2*self.view.frame.width
        V7.view.frame = V6Frame

        
       
        
        self.scrollView.contentSize = CGSizeMake(self.view.frame.width*6 , self.view.frame.height*1.5)//musi być 1.5 ?
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

