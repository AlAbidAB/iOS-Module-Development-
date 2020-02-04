//
//  ViewController.swift
//  splashwithload1
//
//  Created by Abid AB on 26/1/20.
//  Copyright © 2020 Abid AB. All rights reserved.
//

import UIKit



class ViewController: UIViewController {

    @IBOutlet weak var progressLabel: UILabel!
    @IBOutlet weak var progressView: UIProgressView!
    
    let progress = Progress(totalUnitCount: 100)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startCount()
  
    }
    
    func startCount (){
    // 1
    progressView.progress = 0.0
    progress.completedUnitCount = 0

    // 2
        Timer.scheduledTimer(withTimeInterval: 0.01, repeats: true) { (timer) in
        guard self.progress.isFinished == false else {
            timer.invalidate()
            return
        }
        
        // 3
            self.progress.completedUnitCount += 1
        self.progressView.setProgress(Float(self.progress.fractionCompleted), animated: true)

        self.progressLabel.text = "\(Int(self.progress.fractionCompleted * 100)) %"
        
            
            
            if (self.progress.completedUnitCount == 100)
            {

            self.dismiss(animated: true, completion: nil)

            self.performSegue(withIdentifier: "t", sender: self)

               
            }
            else{
                self.viewDidDisappear(true)
            }

    }
        



}
}

