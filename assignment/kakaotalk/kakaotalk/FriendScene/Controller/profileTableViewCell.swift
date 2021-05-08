//
//  profileTableViewCell.swift
//  kakaotalk
//
//  Created by JEN Lee on 2021/05/07.
//

import UIKit

class profileTableViewCell: UITableViewCell {

    static let identifier : String = "profileTableViewCell"
    
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var profileNameLabel: UILabel!
    @IBOutlet weak var profileStateLabel: UILabel!


    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func setData() {
        profileImageView.image = UIImage(named: "friendtabProfileImg")
        profileNameLabel.text = "이솝트"
        profileStateLabel.text = "졸리다!"
    }

}
