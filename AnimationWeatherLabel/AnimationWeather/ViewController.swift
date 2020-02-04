//
//  ViewController.swift
//  AnimationWeather
//
//  Created by Abid AB on 28/1/20.
//  Copyright © 2020 Abid AB. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var chBack: UIView!
    

    @IBOutlet weak var fdaeLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animation()
        
    }
    
    func animation (){

        fdaeLabel.alpha = 0
        fdaeLabel.textColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        // Color Literal
        chBack.backgroundColor = #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)
        self.view.backgroundColor = #colorLiteral(red: 0.521568656, green: 0.1098039225, blue: 0.05098039284, alpha: 1)
        
        view.addSubview(chBack)
        view.addSubview(fdaeLabel)
        
        UIView.animate(withDuration: 1, delay: 0, options: [.repeat, .autoreverse], animations: {
            self.chBack.backgroundColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
            self.view.backgroundColor = #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)
        }, completion: nil)
        UIView.animate(withDuration: 5) {
            self.fdaeLabel.alpha = 1
        }
    }


}

