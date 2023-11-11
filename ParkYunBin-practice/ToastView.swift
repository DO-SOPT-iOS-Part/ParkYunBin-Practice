//
//  ToastView.swift
//  ParkYunBin-practice
//
//  Created by 박윤빈 on 2023/11/11.
//

import UIKit

import SnapKit
import Then

class ToastView : UIView {
    
    //MARK: - Properties
    
    //MARK: - UI Components
    
    private var toastImageView : UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "toast")
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        hierarchy()
        layout()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func hierarchy() {
        self.addSubview(toastImageView)
    }
    
    private func layout() {
        toastImageView.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.centerY.equalToSuperview()
            $0.size.equalTo(250)
        }
    }
}

