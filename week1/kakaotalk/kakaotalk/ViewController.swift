//
//  ViewController.swift
//  kakaotalk
//
//  Created by JEN Lee on 2021/04/06.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var pwTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        //텍스트필드 초기화
        emailTextField.text = ""
        pwTextField.text = ""
    }

    
    @IBAction func loginBtnClicked(_ sender: UIButton) {
        
        if emailTextField.text?.isEmpty == false && pwTextField.text?.isEmpty == false {
            
            guard let nextVC = self.storyboard?.instantiateViewController(identifier: "ConfirmViewController") as? ConfirmViewController else {
                return
            }
            
            nextVC.modalPresentationStyle = .fullScreen
            nextVC.name = emailTextField.text
            self.present(nextVC, animated: true, completion: nil)
            
        }
    }
    
    @IBAction func signUpBtnClicked(_ sender: UIButton) {
        
        guard let nextVC = self.storyboard?.instantiateViewController(identifier: "SingUpViewController") as? SingUpViewController else { return }
        
        self.navigationController?.pushViewController(nextVC, animated: true)
    }
    
}

