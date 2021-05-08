//
//  FriendsListViewController.swift
//  kakaotalk
//
//  Created by JEN Lee on 2021/04/23.
//

import UIKit

class FriendsListViewController: UIViewController {

    @IBOutlet weak var friendTableView: UITableView!
    var friendList : [FriendDataModel] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setFriendData()
        friendTableViewinit()
        Nibregister()
    }
    
    @IBAction func settingBtnClicked(_ sender: Any) {
        
        let alert = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        
        let edit = UIAlertAction(title: "편집", style: .default)
        let friend = UIAlertAction(title: "친구관리", style: .default)
        let setting = UIAlertAction(title: "전체설정", style: .default)
        let cancel = UIAlertAction(title: "취소", style: .cancel)
        
        alert.addAction(edit)
        alert.addAction(friend)
        alert.addAction(setting)
        alert.addAction(cancel)
        
        self.present(alert, animated: true)
    }
    
    
    
    func friendTableViewinit() {
        friendTableView.delegate = self
        friendTableView.dataSource = self
    }
    
    func Nibregister() {
        
        let profileNib = UINib(nibName: "profileTableViewCell", bundle: nil)
        friendTableView.register(profileNib, forCellReuseIdentifier: "profileTableViewCell")
        
        let friendNib = UINib(nibName: "friendTableViewCell", bundle: nil)
        friendTableView.register(friendNib, forCellReuseIdentifier: "friendTableViewCell")
        
    }

    
    func setFriendData() {
        friendList.append(contentsOf: [
                    FriendDataModel(imageName: "profileImage1",
                                    name: "안솝트",
                                    state: "배고파요"),
                    
                    FriendDataModel(imageName: "profileImage2",
                                    name: "최솝트",
                                    state: "피곤해요"),
                    
                    FriendDataModel(imageName: "profileImage3",
                                    name: "정솝트",
                                    state: "시험언제끝나죠?"),
                    
                    FriendDataModel(imageName: "profileImage4",
                                    name: "이솝트",
                                    state: "ㅠㅠㅠㅠ"),
                    
                    FriendDataModel(imageName: "profileImage5",
                                    name: "유솝트",
                                    state: "나는 상태메세지!"),
                    
                    FriendDataModel(imageName: "profileImage6",
                                    name: "박솝트",
                                    state: "원하는대로 바꿔보세요 ^_^"),
                    
                    FriendDataModel(imageName: "profileImage7",
                                    name: "최솝트",
                                    state: "넘 덥다.."),
                    
                    FriendDataModel(imageName: "profileImage8",
                                    name: "원솝트",
                                    state: "배고파요"),
                    
                    FriendDataModel(imageName: "profileImage9",
                                    name: "투솝트",
                                    state: "내꿈은 대나무부자"),
                    
                    FriendDataModel(imageName: "profileImage10",
                                    name: "권솝트",
                                    state: "걱정말라구!")
                    
                    
                    
                ])
    }

        
    
}

extension FriendsListViewController: UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 73
        } else {
            return 50
        }
    }
    
//    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
//        <#code#>
//    }
}

extension FriendsListViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        } else {
            return friendList.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0 {
            guard let cell = friendTableView.dequeueReusableCell(withIdentifier: "profileTableViewCell") as? profileTableViewCell
            else { return UITableViewCell() }
            
            cell.setData()
            return cell
        }
        
        
        guard let cell = friendTableView.dequeueReusableCell(withIdentifier: "friendTableViewCell") as? friendTableViewCell else {
            return UITableViewCell()
        }
        
        let friendNow = friendList[indexPath.row]
        cell.setData(imageView: friendNow.image,
                     name: friendNow.name,
                     state: friendNow.state)
        return cell
        
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        guard let profileVC = self.storyboard?.instantiateViewController(withIdentifier: "ProfileViewController") as? ProfileViewController else { return }

        profileVC.modalPresentationStyle = .fullScreen
        self.present(profileVC, animated: true, completion: nil)

        if indexPath.section == 0 {
            profileVC.profileImageView.image = UIImage(named: "friendtabProfileImg")
            profileVC.profileName.text = "이솝트"
        } else {
            let friendNow = friendList[indexPath.row]
            profileVC.profileImageView.image = friendNow.image
            profileVC.profileName.text = friendNow.name
        }
        
    }
    
    
}
