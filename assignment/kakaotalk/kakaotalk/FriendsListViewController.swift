//
//  FriendsListViewController.swift
//  kakaotalk
//
//  Created by JEN Lee on 2021/04/23.
//

import UIKit

class FriendsListViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    @IBAction func profileImageClicked(_ sender: Any) {
        guard let profileVC = self.storyboard?.instantiateViewController(withIdentifier: "ProfileViewController") else { return }
        
        profileVC.modalPresentationStyle = .fullScreen
        self.present(profileVC, animated: true, completion: nil)
    }
    
}
