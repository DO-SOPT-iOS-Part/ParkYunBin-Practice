//
//  ResultViewController.swift
//  ParkYunBin-practice
//
//  Created by 박윤빈 on 2023/10/07.
//

import UIKit

class ResultViewController: UIViewController {
    
    private var email: String = ""
    private var password: String = ""
    
    @IBOutlet var emailLabel: UILabel!
    @IBOutlet var passwordLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bindText()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func backButtonTapped(_ sender: Any) {
        if self.navigationController != nil {
            self.navigationController?.popViewController(animated: true)
        } else {
            self.dismiss(animated: true)
        }
    }
    
    func bindText() {
        self.emailLabel.text = "\(email)"
        self.passwordLabel.text = "\(password)"
    }
    
    func bindText(email: String, password: String) {
        self.email = "email : \(email)"
        self.password = "password : \(password)"
    }
}
