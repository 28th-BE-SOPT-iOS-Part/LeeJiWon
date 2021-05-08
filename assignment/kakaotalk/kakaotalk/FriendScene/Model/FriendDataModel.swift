//
//  FriendDataModel.swift
//  kakaotalk
//
//  Created by JEN Lee on 2021/05/07.
//

import Foundation
import UIKit

struct FriendDataModel
{
    var image : UIImage
    var name : String
    var state: String
    
    init(imageName : String,
         name : String,
         state: String)
    {
        
        
        if let image = UIImage(named: imageName)
        {
            self.image = image
        }
        else
        {
            self.image = UIImage()
        }
        self.name = name
        self.state = state
    }
    

}
