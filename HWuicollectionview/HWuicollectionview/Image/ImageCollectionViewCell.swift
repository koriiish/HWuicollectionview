//
//  ImageCollectionViewCell.swift
//  HWuicollectionview
//
//  Created by Карина Дьячина on 11.01.24.
//

import UIKit

class ImageCollectionViewCell: UICollectionViewCell {
  
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var innerView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
       
        innerView.backgroundColor = .black
        
    }
//    func configure(image: Image) {
//        imageView.image =
//  }
}

