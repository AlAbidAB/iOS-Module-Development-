//
//  homeViewController.swift
//  splashwithload1
//
//  Created by Abid AB on 26/1/20.
//  Copyright © 2020 Abid AB. All rights reserved.
//

import UIKit

class homeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.modalPresentationStyle = .fullScreen
        
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
}
