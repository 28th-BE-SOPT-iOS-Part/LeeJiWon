//
//  ProfileViewController.swift
//  kakaotalk
//
//  Created by JEN Lee on 2021/04/23.
//

import UIKit

class ProfileViewController: UIViewController {
    
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var profileName: UILabel!
    
    var panGestureRecognizer: UIPanGestureRecognizer?
    var initialTouchPoint: CGPoint = CGPoint(x: 0, y: 0)

    override func viewDidLoad() {
        super.viewDidLoad()
        panGestureRecognizer = UIPanGestureRecognizer(target: self, action: #selector(panGestureAction(_:)))
        view.addGestureRecognizer(panGestureRecognizer!)
    }
    

    @IBAction func xBtnClicked(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    @objc func panGestureAction(_ sender: UIPanGestureRecognizer) {
            let touchPoint = sender.location(in: self.view?.window)
            
            switch sender.state {
            case .began:
                initialTouchPoint = touchPoint
            case .changed:
                if touchPoint.y - initialTouchPoint.y > 0 {
                    self.view.frame = CGRect(x: 0,
                                             y: touchPoint.y - initialTouchPoint.y,
                                             width: self.view.frame.size.width,
                                             height: self.view.frame.size.height)
                }
            case .ended, .cancelled:
                if touchPoint.y - initialTouchPoint.y > (self.view.frame.height / 3) {
                    self.dismiss(animated: true, completion: nil)
                } else {
                    UIView.animate(withDuration: 0.3) {
                        self.view.frame = CGRect(x: 0,
                                                 y: 0,
                                                 width: self.view.frame.width,
                                                 height: self.view.frame.height)
                    }
                }
            default:
                break
            }
        }
    
}
