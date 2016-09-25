//
//  View4.swift
//  snapocv
//
//  Created by Dominik Grafik on 25.07.2016.
//  Copyright © 2016 Dominik Grafik. All rights reserved.
//

import UIKit

class View4: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate {
    
    @IBOutlet weak var myTextField: UITextField!
    
    @IBOutlet weak var picker: UIPickerView!
    
    var pickerData: [String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.picker.delegate = self
        self.picker.dataSource = self
        
        self.myTextField.delegate = self;

        
        // Input data into the Array:
        pickerData = ["E-mail", "Phone", "GitHub", ]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
        
        // Dispose of any resources that can be recreated.
    }
    // The number of columns of data
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // The number of rows of data
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    // The data to return for the row and component (column) that's being passed in
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
}

    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int){
        if row==0
        {
            myTextField.text = "dominik.grafik@gmail.com"
        }
        if row == 1
        {
            myTextField.text = "605 434 145"
        }
        if row == 2
        {
            myTextField.text = "github.com/dgrafik"
        }
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }

}
