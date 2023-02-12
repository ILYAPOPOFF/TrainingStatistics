//
//  ViewController.swift
//  TrainingStatistics
//
//  Created by ILYA POPOV on 11.02.2023.
//

import UIKit

class OverviewViewController: BaseController {
    
    private let allWorkoutsButton = SecondaryButton()

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
        
        view.addSubview(allWorkoutsButton)
    }
    
    override func constraints() {
        super.constraints()
        
        NSLayoutConstraint.activate([
            allWorkoutsButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            allWorkoutsButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            allWorkoutsButton.heightAnchor.constraint(equalToConstant: 28),
            allWorkoutsButton.widthAnchor.constraint(equalToConstant: 130)
        ])
    }
    
    override func configure() {
        super.configure()
        
        allWorkoutsButton.setTitle(Resources.Strings.Overview.allWorkOutsButton)
        allWorkoutsButton.addTarget(self, action: #selector(allWorkoutsButtonAction), for: .touchUpInside)
        allWorkoutsButton.translatesAutoresizingMaskIntoConstraints = false
    }
}

@objc extension OverviewViewController {
    func allWorkoutsButtonAction() {
        print("All Workouts button tapped")
    }
}
