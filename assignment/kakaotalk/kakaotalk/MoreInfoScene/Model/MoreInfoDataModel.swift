//
//  MoreInfoDataModel.swift
//  kakaotalk
//
//  Created by JEN Lee on 2021/05/08.
//

import Foundation
import UIKit

struct MoreInfoDataModel {
    var icon : UIImage
    var title : String
    
    init(imageName : String,
         title : String)
    {
        
        
        if let icon = UIImage(named: imageName)
        {
            self.icon = icon
        }
        
        else
        {
            self.icon = UIImage()
        }
        
        self.title = title
    }
    
}
