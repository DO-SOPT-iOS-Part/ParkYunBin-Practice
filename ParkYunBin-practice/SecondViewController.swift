//
//  SecondViewController.swift
//  ParkYunBin-practice
//
//  Created by 박윤빈 on 2023/10/14.
//

import UIKit

class SecondViewController: UIViewController {
    
    private let height = UIScreen.main.bounds.height / 4
    private let width = UIScreen.main.bounds.width / 2
    
    var view1: UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var view2: UIView = {
        let view = UIView()
        view.backgroundColor = .yellow
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var view3: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var view4: UIView = {
        let view = UIView()
        view.backgroundColor = .green
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var stackView1: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 0
        return stackView
    }()
    
    private var stackView2: UIStackView = {
        let stackView = UIStackView()
        
        return stackView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        setUI()
        setConstraint()
        // Do any additional setup after loading the view.
    }

    private func setUI() {
        view.addSubViews(view1, view2, view3, view4)
    }
    
    private func setConstraint() {
        NSLayoutConstraint.activate([view1.topAnchor.constraint(equalTo: self.view.topAnchor),
                                     view1.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
                                     view1.heightAnchor.constraint(equalToConstant: height),
                                     view1.widthAnchor.constraint(equalToConstant: width)])

        NSLayoutConstraint.activate([view2.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
                                     view2.topAnchor.constraint(equalTo: self.view1.bottomAnchor),
                                     view2.heightAnchor.constraint(equalToConstant: height),
                                     view2.widthAnchor.constraint(equalToConstant: width)])
        
        NSLayoutConstraint.activate([view3.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
                                     view3.topAnchor.constraint(equalTo: self.view2.bottomAnchor),
                                     view3.heightAnchor.constraint(equalToConstant: height),
                                     view3.widthAnchor.constraint(equalToConstant: width)])
        
        NSLayoutConstraint.activate([view4.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
                                     view4.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
                                     view4.heightAnchor.constraint(equalToConstant: height),
                                     view4.widthAnchor.constraint(equalToConstant: width)])
    }

}

