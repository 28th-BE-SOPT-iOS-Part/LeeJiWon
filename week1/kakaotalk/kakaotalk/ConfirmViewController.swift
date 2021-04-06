//
//  ConfirmViewController.swift
//  kakaotalk
//
//  Created by JEN Lee on 2021/04/06.
//

import UIKit

class ConfirmViewController: UIViewController {
    
    @IBOutlet weak var confirmLabel: UILabel!
    var name : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLabel()
    }
    
    func setLabel() {
        if let name = self.name {
            confirmLabel.text = "\(name) 님"
        }
    }
    
    @IBAction func confirmBtnClicked(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    

}
