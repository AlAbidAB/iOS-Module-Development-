//
//  ViewController.swift
//  ImageChangedOnLabel
//
//  Created by Abid AB on 18/2/20.
//  Copyright © 2020 Abid AB. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let abc:Int = 0

    @IBOutlet weak var numLbl: UILabel!

    @IBOutlet weak var s1Im: UIImageView!
    @IBOutlet weak var userInTexF: UITextField!
    @IBOutlet weak var s2Img: UIImageView!
    @IBOutlet weak var s3Img: UIImageView!
    @IBOutlet weak var s4Img: UIImageView!
    
    @IBOutlet weak var s5Img: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//        let tap = UITapGestureRecognizer(target: self, action: #selector(ViewController.tapFunction))
//           numLbl.isUserInteractionEnabled = true
//           numLbl.addGestureRecognizer(tap)
        
        s1Im.image = #imageLiteral(resourceName: "half")
        s2Img.image = #imageLiteral(resourceName: "half")
        s3Img.image = #imageLiteral(resourceName: "half")
        s4Img.image = #imageLiteral(resourceName: "half")
        s5Img.image = #imageLiteral(resourceName: "half")

       
    }
    
//    @objc func tapFunction(sender:UITapGestureRecognizer) {
//
//        numLbl.text = userInTexF.text!
//         
//         if numLbl.text == "1"{
//            print(numLbl.text!)
//            s1Im.image = #imageLiteral(resourceName: "fillstar")
//            s2Img.image = #imageLiteral(resourceName: "half")
//            s3Img.image = #imageLiteral(resourceName: "half")
//            s4Img.image = #imageLiteral(resourceName: "half")
//            s5Img.image = #imageLiteral(resourceName: "half")
//    }
//            else if numLbl.text == "2"{
//                print(numLbl.text!)
//                s1Im.image = #imageLiteral(resourceName: "fillstar")
//                s2Img.image = #imageLiteral(resourceName: "fillstar")
//                s3Img.image = #imageLiteral(resourceName: "half")
//                s4Img.image = #imageLiteral(resourceName: "half")
//                s5Img.image = #imageLiteral(resourceName: "half")
//        }
//            else if numLbl.text == "3"{
//                print(numLbl.text!)
//                s1Im.image = #imageLiteral(resourceName: "fillstar")
//                s2Img.image = #imageLiteral(resourceName: "fillstar")
//                s3Img.image = #imageLiteral(resourceName: "fillstar")
//                s4Img.image = #imageLiteral(resourceName: "half")
//                s5Img.image = #imageLiteral(resourceName: "half")
//        }
//            else if numLbl.text == "4"{
//                print(numLbl.text!)
//                s1Im.image = #imageLiteral(resourceName: "fillstar")
//                s2Img.image = #imageLiteral(resourceName: "fillstar")
//                s3Img.image = #imageLiteral(resourceName: "fillstar")
//                s4Img.image = #imageLiteral(resourceName: "fillstar")
//                s5Img.image = #imageLiteral(resourceName: "half")
//        }
//            else if numLbl.text == "5"{
//                print(numLbl.text!)
//                s1Im.image = #imageLiteral(resourceName: "fillstar")
//                s2Img.image = #imageLiteral(resourceName: "fillstar")
//                s3Img.image = #imageLiteral(resourceName: "fillstar")
//                s4Img.image = #imageLiteral(resourceName: "fillstar")
//                s5Img.image = #imageLiteral(resourceName: "fillstar")
//        }
//             else
//             {
//                
//                s1Im.image = #imageLiteral(resourceName: "half")
//                s2Img.image = #imageLiteral(resourceName: "half")
//                s3Img.image = #imageLiteral(resourceName: "half")
//                s4Img.image = #imageLiteral(resourceName: "half")
//                s5Img.image = #imageLiteral(resourceName: "half")
//                
//        }
//    }
    
        
        
    @IBAction func submit(_ sender: Any) {
        
            numLbl.text = "\(userInTexF.text!) / 5"
             
             if userInTexF.text == "1"{
                print(numLbl.text!)
                s1Im.image = #imageLiteral(resourceName: "fillstar")
                s2Img.image = #imageLiteral(resourceName: "half")
                s3Img.image = #imageLiteral(resourceName: "half")
                s4Img.image = #imageLiteral(resourceName: "half")
                s5Img.image = #imageLiteral(resourceName: "half")
        }
                else if userInTexF.text == "2"{
                    print(numLbl.text!)
                    s1Im.image = #imageLiteral(resourceName: "fillstar")
                    s2Img.image = #imageLiteral(resourceName: "fillstar")
                    s3Img.image = #imageLiteral(resourceName: "half")
                    s4Img.image = #imageLiteral(resourceName: "half")
                    s5Img.image = #imageLiteral(resourceName: "half")
            }
                else if userInTexF.text == "3"{
                    print(numLbl.text!)
                    s1Im.image = #imageLiteral(resourceName: "fillstar")
                    s2Img.image = #imageLiteral(resourceName: "fillstar")
                    s3Img.image = #imageLiteral(resourceName: "fillstar")
                    s4Img.image = #imageLiteral(resourceName: "half")
                    s5Img.image = #imageLiteral(resourceName: "half")
            }
                else if userInTexF.text == "4"{
                    print(numLbl.text!)
                    s1Im.image = #imageLiteral(resourceName: "fillstar")
                    s2Img.image = #imageLiteral(resourceName: "fillstar")
                    s3Img.image = #imageLiteral(resourceName: "fillstar")
                    s4Img.image = #imageLiteral(resourceName: "fillstar")
                    s5Img.image = #imageLiteral(resourceName: "half")
            }
                else if userInTexF.text == "5"{
                    print(numLbl.text!)
                    s1Im.image = #imageLiteral(resourceName: "fillstar")
                    s2Img.image = #imageLiteral(resourceName: "fillstar")
                    s3Img.image = #imageLiteral(resourceName: "fillstar")
                    s4Img.image = #imageLiteral(resourceName: "fillstar")
                    s5Img.image = #imageLiteral(resourceName: "fillstar")
            }
                 else
                 {
                    
                    s1Im.image = #imageLiteral(resourceName: "half")
                    s2Img.image = #imageLiteral(resourceName: "half")
                    s3Img.image = #imageLiteral(resourceName: "half")
                    s4Img.image = #imageLiteral(resourceName: "half")
                    s5Img.image = #imageLiteral(resourceName: "half")
                    
            }
    }
    
    }




