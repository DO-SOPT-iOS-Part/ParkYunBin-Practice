//
//  ImageCollectionViewCell.swift
//  ParkYunBin-practice
//
//  Created by 박윤빈 on 2023/10/28.
//

import UIKit

import SnapKit

protocol ItemSelectedProtocol: NSObject {
    func getButtonState(state: Bool, row: Int)
}

class ImageCollectionViewCell: UICollectionViewCell {
    
    weak var delegate: ItemSelectedProtocol?
    var itemRow: Int?
    static let identifier: String = "ImageCollectionViewCell"

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func bindData(data: ImageCollectionData,
                      row: Int) {
            self.imageView.image = UIImage(named: data.image)
            self.likeButton.isSelected = data.isLiked
            self.itemRow = row
        }
    
    private func setLayout() {
        [imageView, likeButton].forEach {
            self.contentView.addSubview($0)
        }
        
        imageView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
        likeButton.snp.makeConstraints {
            $0.bottom.trailing.equalToSuperview().inset(16)
        }
    }
    
    private let imageView = UIImageView()
    @objc private func likeButtonTap() {
            self.likeButton.isSelected.toggle()
            if let itemRow {
                self.delegate?.getButtonState(state: self.likeButton.isSelected,
                                              row: itemRow)
            }
        }
        
        private lazy var likeButton = UIButton().then {
            $0.addTarget(self,
                         action: #selector(likeButtonTap),
                         for: .touchUpInside)
            $0.setImage(UIImage(systemName: "hand.thumbsup"), for: .normal)
            $0.setImage(UIImage(systemName: "hand.thumbsup.fill"), for: .selected)
        }
    
}
