//
//  ImageSlider.swift
//  Slider
//
//  Created by Abid AB on 12/1/20.
//  Copyright © 2020 Abid AB. All rights reserved.
//


import UIKit

class SliderCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    
    var image: UIImage! {
        didSet {
            imageView.image = image
        }
    }
    
    
}
