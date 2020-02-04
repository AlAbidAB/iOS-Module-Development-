//
//  ViewController.swift
//  minimizeView
//
//  Created by Abid AB on 30/1/20.
//  Copyright © 2020 Abid AB. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var secondView: UIView!
    @IBOutlet weak var secondViewConstraints: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let gesture = UITapGestureRecognizer(target: self, action:  #selector(self.checkAction))
         self.secondView.addGestureRecognizer(gesture)
        
    }
    
    @objc func checkAction(sender : UITapGestureRecognizer) {
        
        // Do what you want
        secondViewConstraints.constant = -secondView.frame.height
 
    }


}

