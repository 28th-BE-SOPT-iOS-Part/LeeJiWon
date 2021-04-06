//
//  SingUpViewController.swift
//  kakaotalk
//
//  Created by JEN Lee on 2021/04/06.
//

import UIKit

class SingUpViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var pwTextField: UITextField!
    @IBOutlet weak var pwConfirmTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        //다음화면으로 넘어가면서 스택에서 사라지기
        self.navigationController?.popViewController(animated: true)
    }
    
    
    @IBAction func signUpBtnClicked(_ sender: UIButton) {
        
        if emailTextField.text?.isEmpty == false && pwTextField.text?.isEmpty == false && pwConfirmTextField.text?.isEmpty == false
        {
            
            guard let nextVC = self.storyboard?.instantiateViewController(identifier: "ConfirmViewController") as? ConfirmViewController else { return }
            
            nextVC.modalPresentationStyle = .fullScreen
            nextVC.name = emailTextField.text
            
            self.present(nextVC, animated: true, completion: nil)
            
        }
        
    }
    
    
}
