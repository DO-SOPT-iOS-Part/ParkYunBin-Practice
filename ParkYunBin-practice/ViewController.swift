//
//  ViewController.swift
//  ParkYunBin-practice
//
//  Created by 박윤빈 on 2023/10/14.
//

import UIKit

class ViewController: UIViewController {
    
    var 바둑알1: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        view.layer.cornerRadius = 10
        view.clipsToBounds = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var 바둑알2: UIView = {
        let view = UIView(frame: .init(origin: .zero, size: .init(width: 6,
                                                                  height: 6)))
        view.backgroundColor = .black
        view.layer.cornerRadius = 10
        view.clipsToBounds = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var 방어막: UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        setUI()
        setConstraint()
        // Do any additional setup after loading the view.
    }

    private func setUI() {
        view.addSubViews(바둑알1, 바둑알2, 방어막)
        
    }
    
    private func setConstraint() {
        NSLayoutConstraint.activate([바둑알1.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 40),
                                     바둑알1.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 40),
                                     바둑알1.widthAnchor.constraint(equalToConstant: 20),
                                     바둑알1.heightAnchor.constraint(equalToConstant: 20)])
        
        NSLayoutConstraint.activate([바둑알2.topAnchor.constraint(equalTo: self.바둑알1.bottomAnchor, constant: 40),
                                     바둑알2.leadingAnchor.constraint(equalTo: self.바둑알1.trailingAnchor, constant: 40),
                                     바둑알2.widthAnchor.constraint(equalToConstant: 20),
                                     바둑알2.heightAnchor.constraint(equalToConstant: 20)])
        
        NSLayoutConstraint.activate([방어막.topAnchor.constraint(equalTo: self.바둑알2.bottomAnchor, constant: 20),
                                     방어막.leadingAnchor.constraint(equalTo: self.바둑알2.trailingAnchor, constant: 20),
                                     방어막.widthAnchor.constraint(equalToConstant: 120),
                                     방어막.heightAnchor.constraint(equalToConstant: 20)])
    }

}
