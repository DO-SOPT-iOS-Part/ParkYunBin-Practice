//
//  whyiOS.swift
//  ParkYunBin-practice
//
//  Created by 박윤빈 on 2023/11/06.
//

import UIKit
import SnapKit

class AClass {
    var aProperty: BClass?
}

class BClass {
    var bProperty: AClass?
}

class SecondVC: UIViewController {
    
    var a = AClass()
    var b = BClass()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .red
    
        // 서로를 참조하여 Retain Cycle을 발생
        a.aProperty = b
        b.bProperty = a
    }
}

class FirstVC: UIViewController {
    
    
    
    var button: UIButton = {
        let button = UIButton()
        button.setTitle("다음", for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(button)
        button.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.height.width.equalTo(100)
        }
        button.addTarget(self, action: #selector(tapped), for: .touchUpInside)
    }
    
    @objc
    func tapped() {
        let secondVC = SecondVC()
        present(secondVC, animated: true)
    }
}


