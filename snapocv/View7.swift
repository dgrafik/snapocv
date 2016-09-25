//
//  View7.swift
//  snapocv
//
//  Created by Dominik Grafik on 25.07.2016.
//  Copyright © 2016 Dominik Grafik. All rights reserved.
//

import UIKit

class View7: UIViewController {

   
    @IBOutlet weak var actInd: UIActivityIndicatorView!
    @IBOutlet weak var imageView: UIImageView!
    @IBAction func startBlur(sender: AnyObject) {
        let darkBlur = UIBlurEffect(style: UIBlurEffectStyle.Dark)
        // 2
        let blurView = UIVisualEffectView(effect: darkBlur)
        blurView.frame = imageView.bounds
        // 3
        imageView.addSubview(blurView)

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        actInd.startAnimating()

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
