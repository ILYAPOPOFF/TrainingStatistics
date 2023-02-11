//
//  SessionController.swift
//  TrainingStatistics
//
//  Created by ILYA POPOV on 11.02.2023.
//

import UIKit

class SessionViewController: BaseController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
    }
    
    func setupView() {
        title = "High Intensity Cardio"
        navigationController?.tabBarItem.title = Resources.Strings.TabBar.session
        
        addNavbarButton(at: .left, with: "Pause")
        addNavbarButton(at: .right, with: "Finish")
    }
    
}

