//
//  ResultViewController.swift
//  ParkYunBin-practice
//
//  Created by 박윤빈 on 2023/10/07.
//

import UIKit

class ResultViewController: UIViewController {
    
    private var email: String = ""
    private let reason: [String] = ["지인을 통해", "인스타그램", "공식 홈페이지", "페이스북", "유튜브 홍보 영상"]
    private let pickerView = UIPickerView()
    @IBOutlet var emailLabel: UILabel!
    @IBOutlet weak var showPickerTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
        // Do any additional setup after loading the view.
    }
    
    // MARK: - Functions
    
    private func setUI() {
        bindText()
        setPickerView()
        setToolBar()
        showPickerTextField.tintColor = .clear
    }
    
    private func bindText() {
        self.emailLabel.text = "\(email)"
    }
    
    // overload
    func bindText(email: String) {
        self.email = "\(email) 님\n만나서 반가워요!"
    }
    
    private func setPickerView() {
        pickerView.delegate = self
        showPickerTextField.inputView = pickerView
    }
    
    private func setToolBar() {
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        let button = UIBarButtonItem(title: "선택",
                                     style: .plain,
                                     target: self,
                                     action: #selector(self.action)
        )
        toolBar.setItems([button], animated: true)
        toolBar.isUserInteractionEnabled = true
        showPickerTextField.inputAccessoryView = toolBar
    }
    
    @objc
    private func action() {
        self.showPickerTextField.resignFirstResponder()
    }
}

// MARK: - UIPickerViewDelegate

extension ResultViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return reason.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return reason[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        showPickerTextField.text = reason[row]
    }
    
}
