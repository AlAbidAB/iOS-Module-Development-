//
//  SliderCell.swift
//  Slider
//
//  Created by Abid AB on 12/1/20.
//  Copyright © 2020 Abid AB. All rights reserved.
//

import UIKit

class SliderCell: UICollectionViewCell {
    @IBOutlet weak var itemImage: UIImageView!
    
    var image : UIImage!{
        
        didSet{
            itemImage.image = image
        }
        
        
    }
}
    

