//
//  CollDataModel.swift
//  ZoomCollectionView
//
//  Created by Sameer Nawaz on 27/07/20.
//  Copyright © 2020 Femargent Inc. All rights reserved.
//

import Foundation
import UIKit

class CollDataModel: NSObject {
    
    let img: UIImage
    let title: String
    
    init(img: UIImage, title: String) {
        self.img = img
        self.title = title
    }
}
