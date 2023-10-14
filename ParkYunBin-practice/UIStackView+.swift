//
//  UIStackView+.swift
//  ParkYunBin-practice
//
//  Created by 박윤빈 on 2023/10/14.
//
import UIKit

extension UIStackView {
    func addArrangeSubViews(_ views: UIView...) {
        views.forEach { self.addArrangedSubview($0) }
    }
}
