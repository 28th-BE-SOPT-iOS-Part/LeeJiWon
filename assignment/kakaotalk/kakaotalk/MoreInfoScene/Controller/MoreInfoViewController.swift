//
//  MoreInfoViewController.swift
//  kakaotalk
//
//  Created by JEN Lee on 2021/05/08.
//

import UIKit

class MoreInfoViewController: UIViewController {

    @IBOutlet weak var selectCollectionView: UICollectionView!
    private var infoList : [MoreInfoDataModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        selectCollectionViewinit()
        setInfoData()

    }
    
    func selectCollectionViewinit() {
        
        selectCollectionView.delegate = self
        selectCollectionView.dataSource = self
        
    }
    
    func setInfoData() {
        
        infoList.append(contentsOf: [
            
            MoreInfoDataModel(imageName: "messageTabIcon",
                              title: "메일"),
            MoreInfoDataModel(imageName: "messageTabIcon",
                              title: "캘린더"),
            MoreInfoDataModel(imageName: "messageTabIcon",
                              title: "서랍"),
            MoreInfoDataModel(imageName: "messageTabIcon",
                              title: "카카오콘"),
            MoreInfoDataModel(imageName: "messageTabIcon",
                              title: "메이커스"),
            MoreInfoDataModel(imageName: "messageTabIcon",
                              title: "선물하기"),
            MoreInfoDataModel(imageName: "messageTabIcon",
                              title: "이모티콘"),
            MoreInfoDataModel(imageName: "messageTabIcon",
                              title: "프렌즈"),
            MoreInfoDataModel(imageName: "messageTabIcon",
                              title: "쇼핑하기"),
            MoreInfoDataModel(imageName: "messageTabIcon",
                              title: "스타일"),
            MoreInfoDataModel(imageName: "messageTabIcon",
                              title: "주문하기"),
            MoreInfoDataModel(imageName: "messageTabIcon",
                              title: "멜론티켓"),
            MoreInfoDataModel(imageName: "messageTabIcon",
                              title: "게임"),
            MoreInfoDataModel(imageName: "messageTabIcon",
                              title: "멜론"),
            MoreInfoDataModel(imageName: "messageTabIcon",
                              title: "헤어샵"),
            MoreInfoDataModel(imageName: "messageTabIcon",
                              title: "전체서비스"),
    
        
        ])
    }

}

extension MoreInfoViewController : UICollectionViewDelegate {
    
    
}

extension MoreInfoViewController : UICollectionViewDataSource
{
func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    infoList.count
}

func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    guard let cell = selectCollectionView.dequeueReusableCell(withReuseIdentifier: MoreInfoCollectionViewCell.identifier, for: indexPath) as? MoreInfoCollectionViewCell else { return UICollectionViewCell() }
    
    cell.setData(image: infoList[indexPath.row].icon,
                 title: infoList[indexPath.row].title)
    
    return cell
}

}
    
extension MoreInfoViewController : UICollectionViewDelegateFlowLayout
{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let width = UIScreen.main.bounds.width
        
        let cellWidth = width * (70/375)
        
        return CGSize(width: cellWidth, height: cellWidth)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        UIEdgeInsets.zero
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 19
    }
}
