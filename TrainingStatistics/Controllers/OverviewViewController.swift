//
//  ViewController.swift
//  TrainingStatistics
//
//  Created by ILYA POPOV on 11.02.2023.
//

import UIKit

class OverviewViewController: BaseController {
    
    private let navBar = OverviewNavBar()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
    }
    
    func setupView() {
        
        
    }
}

extension OverviewViewController {
    override func addView() {
        super.addView()
        
        view.addSubview(navBar)
    }
    
    override func constraint() {
        super.constraint()
        
        NSLayoutConstraint.activate([
            
            navBar.topAnchor.constraint(equalTo: view.topAnchor),
            navBar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            navBar.trailingAnchor.constraint(equalTo: view.trailingAnchor),

        ])
    }
    
    override func configure() {
        super.configure()
        
        navigationController?.navigationBar.isHidden = true
        
        navBar.translatesAutoresizingMaskIntoConstraints = false
        
    }
}

@objc extension OverviewViewController {
    func allWorkoutsButtonAction() {
        print("All Workouts button tapped")
    }
}
