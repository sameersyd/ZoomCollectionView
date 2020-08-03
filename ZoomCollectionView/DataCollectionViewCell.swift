//
//  DataCollectionViewCell.swift
//  ZoomCollectionView
//
//  Created by Sameer Nawaz on 27/07/20.
//  Copyright © 2020 Femargent Inc. All rights reserved.
//

import UIKit

class DataCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        img.image = nil
        titleLabel.text = ""
    }
}

