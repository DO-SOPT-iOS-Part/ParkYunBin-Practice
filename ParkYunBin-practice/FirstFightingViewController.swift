//
//  AnimationStudy.swift
//  ParkYunBin-practice
//
//  Created by 박윤빈 on 2023/11/06.
//

import UIKit
import SnapKit

class FirstFightingViewController: UIViewController {
    
    private lazy var shakeButton : UIButton = {
        let button = UIButton()
        button.setTitle("만두!", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.backgroundColor = .cyan
        button.layer.cornerRadius = 22
        button.addTarget(self, action: #selector(brrrBtnTap), for: .touchUpInside)
        return button
    }()
    
    private lazy var toastButton : UIButton = {
        let button = UIButton()
        button.setTitle("배고프다 ㅠㅠ", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.backgroundColor = .cyan
        button.layer.cornerRadius = 22
        button.addTarget(self, action: #selector(toastBtnTap), for: .touchUpInside)
        return button
    }()
    
    private lazy var dumplingImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "dumpling")
        return imageView
    }()
    override func viewDidLoad() {
        super.viewDidLoad()

        setLayout()
    }
    
    private func setLayout() {
        view.backgroundColor = .white
        view.addSubview(toastButton)
        view.addSubview(shakeButton)
        view.addSubview(dumplingImageView)
        
        shakeButton.snp.makeConstraints() {
            $0.centerY.equalToSuperview().offset(-55)
            $0.centerX.equalToSuperview()
            $0.height.equalTo(50)
            $0.width.equalTo(200)
        }
        
        toastButton.snp.makeConstraints() {
            $0.centerY.equalToSuperview().offset(55)
            $0.centerX.equalToSuperview()
            $0.height.equalTo(50)
            $0.width.equalTo(260)
        }
        
        dumplingImageView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.bottom.equalTo(shakeButton.snp.top).offset(-20)
            make.height.width.equalTo(100)
        }
        
    }
    
    @objc
    private func brrrBtnTap() {
        shakeButton.shakeButton()
        makeDumplingAnimation()
    }
    
    @objc
    private func toastBtnTap() {
        showToast()
    }
    
    private func makeDumplingAnimation() {
        UIView.transition(with: dumplingImageView, duration: 0.6,
                          options: .transitionFlipFromLeft, animations: nil)
    }
}

extension UIButton {
    func shakeButton() {
        self.transform = CGAffineTransform(translationX: 0, y: 20)
        UIView.animate(withDuration: 1.0,
                       delay: 0,
                       usingSpringWithDamping: 0.1,
                       initialSpringVelocity: 20,
                       options: [.curveEaseInOut]) {
            self.transform = .identity
        }
    }
}

extension FirstFightingViewController {
    func showToast() {
        let toastView = ToastView()
        toastView.layer.cornerRadius = 6
        
        view.addSubview(toastView)
        
        toastView.snp.makeConstraints() {
            $0.bottom.equalToSuperview().inset(50)
            $0.centerX.equalToSuperview()
            $0.height.width.equalTo(250)
        }
        
        UIView.animate(withDuration: 1.0, delay: 2.0, options: .curveEaseInOut) {
            toastView.alpha = 0.0
        } completion: { _ in
            toastView.removeFromSuperview()
        }
    }
}
