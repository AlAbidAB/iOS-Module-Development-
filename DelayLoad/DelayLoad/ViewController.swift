//
//  ViewController.swift
//  DelayLoad
//
//  Created by Abid AB on 9/3/20.
//  Copyright © 2020 Abid AB. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var spinner = UIActivityIndicatorView(style: .large)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadingIndicator()
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(4), execute: {
            self.spinner.stopAnimating()
        })
    }
    
    func loadingIndicator(){
   
        
        // spinner.backgroundColor = UIColor.white.withAlphaComponent(0.0)
        spinner.translatesAutoresizingMaskIntoConstraints = false
        spinner.color = UIColor.white
        spinner.backgroundColor = UIColor.black.withAlphaComponent(0.2)
        spinner.frame = CGRect(x:0 ,y:0 ,width: 100,height: 100)
        spinner.center = self.view.center
        spinner.frame.size.width = 100.0
        spinner.frame.size.height = 100.0
        spinner.startAnimating()
        spinner.layer.cornerRadius = 20
        view.addSubview(spinner)
        

//  view center horizontally and vertically constraints
        
//    let centerVertically = NSLayoutConstraint(item: spinner,
//                                              attribute: .centerX,
//                                              relatedBy: .equal,
//                                      toItem: view,
//                                      attribute: .centerX,
//                                  multiplier: 1.0,
//                                    constant: 0.0)
//    let centerHorizontally = NSLayoutConstraint(item: spinner,
//                                                attribute: .centerY,
//                                                relatedBy: .equal,
//                                      toItem: view,
//                                      attribute: .centerY,
//                                  multiplier: 1.0,
//                                    constant: 0.0)
//        NSLayoutConstraint.activate([centerVertically, centerHorizontally])
                
        
    }
    
    
}

