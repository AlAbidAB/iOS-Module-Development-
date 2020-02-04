//
//  customTableViewCell.swift
//  CustomTableViewCellWithImage&LabelAction
//
//  Created by Abid AB on 3/2/20.
//  Copyright © 2020 Abid AB. All rights reserved.
//

import UIKit

class customTableViewCell: UITableViewCell {

    @IBOutlet weak var tCellCustomContentView: UIView!
    @IBOutlet weak var tCellImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        tCellCustomContentView.layer.cornerRadius = 20
        tCellCustomContentView.clipsToBounds = true
        tCellImage.layer.cornerRadius = 10
        tCellImage.clipsToBounds = true
        
    }

}
