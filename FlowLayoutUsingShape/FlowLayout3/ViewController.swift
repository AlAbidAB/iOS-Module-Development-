//
//  ViewController.swift
//  FlowLayout3
//
//  Created by Abid AB on 29/12/19.
//  Copyright © 2019 Abid AB. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        collectionView.delegate=self
        collectionView.dataSource=self
        
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return section == 2 ? 4 : 2
       
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        switch indexPath.section {
            
        case 0:
            return CGSize(width: UIScreen.main.bounds.width - 20, height: 200)
        case 1:
            return CGSize(width: (UIScreen.main.bounds.width - 30) / 2, height: 200)
        case 2:
            return CGSize(width: (UIScreen.main.bounds.width - 30) / 2, height: 200)
            
        default:
            return CGSize(width: (UIScreen.main.bounds.width - 30) / 2, height: 200)
            
        }
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectioncell", for: indexPath)
        cell.backgroundColor = .red
        return cell
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        print(indexPath.row)
    }
    
}




