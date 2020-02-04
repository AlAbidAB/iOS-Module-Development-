 //
//  ViewController.swift
//  pickerview
//
//  Created by Training  on 4/12/19.
//  Copyright © 2019 Training . All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    let namet=["Apple", "Samsung", "Oppo","Vivo","Redmi","Xaomi"]

    @IBOutlet weak var cuspi: UIPickerView!
    @IBOutlet weak var cusview: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        cuspi.delegate=self
        cuspi.dataSource=self
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return namet.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return namet[row]
    }


}

