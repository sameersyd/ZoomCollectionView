//
//  ViewController.swift
//  ZoomCollectionView
//
//  Created by Sameer Nawaz on 27/07/20.
//  Copyright © 2020 Femargent Inc. All rights reserved.
//

import UIKit
import UPCarouselFlowLayout

class ViewController: UIViewController {
    
    @IBOutlet weak var collView: UICollectionView!
    
    var mediaArray = [CollDataModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mediaArray.append(CollDataModel(img: UIImage(named: "image_1")!, title: "Title 1"))
        mediaArray.append(CollDataModel(img: UIImage(named: "image_2")!, title: "Title 2"))
        mediaArray.append(CollDataModel(img: UIImage(named: "image_3")!, title: "Title 3"))
        mediaArray.append(CollDataModel(img: UIImage(named: "image_4")!, title: "Title 4"))
        mediaArray.append(CollDataModel(img: UIImage(named: "image_5")!, title: "Title 5"))
        collView.isPagingEnabled = true
        
        let layout = UPCarouselFlowLayout()
        layout.scrollDirection = .horizontal
        layout.itemSize = CGSize(width: collView.frame.size.width, height: collView.frame.size.height)
        collView.collectionViewLayout = layout
    }
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return mediaArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? DataCollectionViewCell
        let val = mediaArray[indexPath.row]
        cell?.imgView.layer.cornerRadius = 10
        cell?.img.image = val.img
        cell?.titleLabel.text = val.title
        
        UIView.animate(withDuration: 10.0, animations: {() -> Void in
            cell?.img.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
        }, completion: {(_ finished: Bool) -> Void in
            UIView.animate(withDuration: 10.0, animations: {() -> Void in
                cell?.img.transform = CGAffineTransform(scaleX: 1, y: 1)
            })
        })
        
        return cell!
    }
    
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = collectionView.frame.size
        return CGSize(width: size.width, height: size.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
}
