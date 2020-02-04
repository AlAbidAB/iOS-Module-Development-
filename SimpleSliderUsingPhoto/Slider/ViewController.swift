//
//  ViewController.swift
//  Slider
//
//  Created by Abid AB on 12/1/20.
//  Copyright © 2020 Abid AB. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var cusCollView: UICollectionView!
    
    @IBOutlet weak var pageController: UIPageControl!
    let itemI = [
        
    UIImage(named: "1"),
    UIImage(named: "2"),
    UIImage(named: "3"),
    UIImage(named: "4"),
    UIImage(named: "5"),
    UIImage(named: "6"),
    UIImage(named: "7"),
    UIImage(named: "8")
        
    ]
    
    var curIndex = 0
    
   // var timer : Timer?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        cusCollView.dataSource = self
        cusCollView.delegate = self
        pageController.numberOfPages = itemI.count
       // startTimer()
    }
//
//    func startTimer (){
//
//        timer = Timer.scheduledTimer(timeInterval: 3.0, target: self, selector: #selector(timerAction), userInfo: nil, repeats: true)
//
//    }
//
//    @objc func timerAction ()
//    {
//        let desireScrollPosition = (curIndex < item.count - 1 ) ? curIndex + 1 : 0
//        cusCollView.scrollToItem(at: IndexPath(item: desireScrollPosition, section: 0), at: .centeredHorizontally, animated: true)
//
//    }
    
    


}


extension ViewController : UICollectionViewDelegate, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return itemI.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let slidecell = cusCollView.dequeueReusableCell(withReuseIdentifier: "slideCell", for: indexPath)as! SliderCell
        slidecell.image = itemI[indexPath.item]
        
        return slidecell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: cusCollView.frame.width, height: cusCollView.frame.height)
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
        curIndex = Int(scrollView.contentOffset.x / cusCollView.frame.size.width)
        pageController.currentPage = curIndex
    }
    

    
    
    
    
}

