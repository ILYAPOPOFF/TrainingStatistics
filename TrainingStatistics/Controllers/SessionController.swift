//
//  SessionController.swift
//  TrainingStatistics
//
//  Created by ILYA POPOV on 11.02.2023.
//

import UIKit

class SessionViewController: BaseController {
    
    private let timerView : BaseInfoView = {
        let view = BaseInfoView(with: "Test", alignment: .center)
        
        return view
    }()
    
}

extension SessionViewController {
    override func setupViews() {
        super.setupViews()
        
        view.setupView(timerView)
    }
    
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
            
            timerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            timerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
            timerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            timerView.heightAnchor.constraint(equalToConstant: 300),
            
        ])
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        
        title = "High Intensity Cardio"
        navigationController?.tabBarItem.title = R.Strings.TabBar.session
        
        addNavbarButton(at: .left, with: "Pause")
        addNavbarButton(at: .right, with: "Finish")
    }
}


