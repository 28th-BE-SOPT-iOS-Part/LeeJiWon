//
//  MoreInfoCollectionViewCell.swift
//  kakaotalk
//
//  Created by JEN Lee on 2021/05/08.
//

import UIKit

class MoreInfoCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    static let identifier : String = "MoreInfoCollectionViewCell"
    
    func setData(image : UIImage,
                 title : String) {
        iconImageView.image = image
        titleLabel.text = title
    }
    
}
