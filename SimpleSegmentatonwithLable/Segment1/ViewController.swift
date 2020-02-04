//
//  ViewController.swift
//  Segment1
//
//  Created by Abid AB on 23/12/19.
//  Copyright © 2019 Abid AB. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var segcon: UISegmentedControl!
    @IBOutlet weak var uilab: UILabel!
    @IBAction func indexChanged(_ sender: Any) {
        switch segcon.selectedSegmentIndex
        {
        case 0:
            uilab.text = "First Segment Selected"
        case 1:
            uilab.text = "Second Segment Selected"
        default:
            break
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

