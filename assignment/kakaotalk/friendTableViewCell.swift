//
//  friendTableViewCell.swift
//  kakaotalk
//
//  Created by JEN Lee on 2021/05/07.
//


import UIKit

class friendTableViewCell: UITableViewCell {

    static let identifier : String = "friendTableViewCell"
    
    @IBOutlet weak var friendImageView: UIImageView!
    @IBOutlet weak var friendNameLabel: UILabel!
    @IBOutlet weak var friendStateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    func setData(imageView: UIImage, name: String, state: String) {
        friendImageView.image = imageView
        friendNameLabel.text = name
        friendStateLabel.text = state
    }
}
