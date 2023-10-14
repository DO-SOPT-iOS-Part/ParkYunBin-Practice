//
//  PracticeStackViewVC.swift
//  ParkYunBin-practice
//
//  Created by 박윤빈 on 2023/10/14.
//

import UIKit

class PracticeStackViewVC: UIViewController {
    
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
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private var stackView2: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.translatesAutoresizingMaskIntoConstraints = false

        return stackView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        
        setUI()
        setStackView()
        setConstraint()
        
        // Do any additional setup after loading the view.
    }

    private func setUI() {
        view.addSubViews(stackView1, stackView2)
    }
    
    private func setConstraint() {
        NSLayoutConstraint.activate([view1.heightAnchor.constraint(equalToConstant: height)])

        NSLayoutConstraint.activate([view2.heightAnchor.constraint(equalToConstant: height)])
        
        NSLayoutConstraint.activate([view3.heightAnchor.constraint(equalToConstant: height)])
        
        NSLayoutConstraint.activate([view4.heightAnchor.constraint(equalToConstant: height)])
        
        NSLayoutConstraint.activate([stackView1.topAnchor.constraint(equalTo: self.view.topAnchor),
                                     stackView1.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
                                     stackView1.widthAnchor.constraint(equalToConstant: width)])
        
        NSLayoutConstraint.activate([stackView2.topAnchor.constraint(equalTo: self.view1.bottomAnchor),
                                     stackView2.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
                                     stackView2.widthAnchor.constraint(equalToConstant: width)])
        
    }
    
    private func setStackView() {
        stackView1.addArrangeSubViews(view1, view3)
        stackView2.addArrangeSubViews(view2, view4)
        
        stackView1.spacing = height
        stackView2.spacing = height
    }

}


