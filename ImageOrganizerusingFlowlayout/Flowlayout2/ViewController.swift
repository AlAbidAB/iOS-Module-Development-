//
//  ViewController.swift
//  Flowlayout2
//
//  Created by Abid AB on 29/12/19.
//  Copyright © 2019 Abid AB. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{

   
    
    @IBOutlet weak var cusCollecyionView: UICollectionView!
    
    var arr = ["l1.jpg","l2.jpg","l3.jpg","l4.jpg","w1.jpg","w2.jpg","w3.jpg","w4.jpg","l1.jpg","l2.jpg","l3.jpg","l4.jpg","w1.jpg","w2.jpg","w3.jpg","w4.jpg"]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cusCollecyionView.delegate=self
        cusCollecyionView.dataSource=self
        
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
            return arr.count

    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
            let cellf = cusCollecyionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)as! cusCollectionViewCell
             cellf.uiImage.image = UIImage (named: arr[indexPath.row])
            return cellf
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let cusCollwidth = cusCollecyionView.bounds.width
        return CGSize(width: cusCollwidth/3, height: cusCollwidth/3)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }

    


}

