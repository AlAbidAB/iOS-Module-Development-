//
//  ViewController.swift
//  IOS-Swift-IBOutletCollectionStarRating
//
//  Created by Abid AB on 5/2/20.
//  Copyright © 2020 Abid AB. All rights reserved.
//
import UIKit

class ViewController: UIViewController {
    
    var counter:Int = 0
    var send:Int = 0
    
    @IBOutlet var starButtons: [UIButton]!
    
    @IBOutlet weak var rateView: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        counter = 0
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("inside willAppear")
        counter = 0
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        
        
        print("sender tag initial",sender.tag)
        

        print("Rated \(sender.tag) stars.")
        rateView.text = "Rated \(sender.tag) stars."
        
        //        for i in 0..<sender.tag{
        //            print("button tag initial",starButtons[i].tag)
        //            print("sender tag initail2",sender.tag)
        //
        //        }
        
        for  button in starButtons {
            
            print("button tag initial",button.tag)
            print("sender tag initail2",sender.tag)
            
            if button.tag < sender.tag {
                
                button.setBackgroundImage(UIImage.init(named: "star-selected"), for: .normal)   //selectted
                
                print("button tag less",button.tag)
                print("sender tag less",sender.tag)
                
            }
            else if (button.tag == sender.tag)
            {
                print("button tag equal before",button.tag)
                print("sender tag equal before",sender.tag)
                
                let val = Float(sender.tag)
                
                counter += 1
                button.setBackgroundImage(UIImage.init(named: "half"), for: .normal)
                
                rateView.text = "Rated \(val - 0.5) stars."
                
                print("send out",send)
                
                if counter % 2 == 0 {
                    
                    print("send in",send)
                    
                    if send == sender.tag{
                        
                        button.setBackgroundImage(UIImage.init(named: "star-selected"), for: .normal)
                        counter = 0
                        rateView.text = "Rated \(val) stars."
                        
                        print("button tag equal after",button.tag)
                        print("sender tag equal after",sender.tag)
                        
                    }
                }
                
                print(counter)
            }
            else {
                button.setBackgroundImage(UIImage.init(named: "star-not-selected"), for: .normal)    //not selectted
                
                print("button tag else",button.tag)
                print("sender tag else",sender.tag)
                
            }
            
            print ("Buton tag last",button.tag)
            
        }
        send = sender.tag
        print ("send tag ", send)
    }
    
}

