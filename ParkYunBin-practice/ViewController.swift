//
//  ViewController.swift
//  ParkYunBin-practice
//
//  Created by 박윤빈 on 2023/10/07.
//

import UIKit

class ViewController: UIViewController {
    private var idText: String = ""
    private var passwordText: String = ""
    @IBOutlet var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    @IBAction func didButtonTapped(_ sender: Any) {
        print("\(idText)\n\(passwordText)")
        pushToResultVC()
    }
    
    @IBAction func idTextFieldDidTapped(_ sender: Any) {
        guard let textField = sender as? UITextField else {return}
        if let idText = textField.text {
            self.idText = idText
        }
    }
    
    @IBAction func pwTextFieldDidTapped(_ sender: Any) {
        guard let textField = sender as? UITextField else {return}
        if let passwordText = textField.text {
            self.passwordText = passwordText
        }
    }
    
    func pushToResultVC() {
        if idText != "" && passwordText != "" {
            guard let resultVC = self.storyboard?.instantiateViewController(withIdentifier: "ResultViewController") as? ResultViewController else {return}
            resultVC.bindText(email: idText)
            self.navigationController?.pushViewController(resultVC, animated: true)
        } else {
            view.showToast(message: "아이디 및 비밀번호를 모두 입력해주세요!")
        }
    }
}

