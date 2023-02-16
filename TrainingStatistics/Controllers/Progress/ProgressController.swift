//
//  ProgressController.swift
//  TrainingStatistics
//
//  Created by ILYA POPOV on 11.02.2023.
//

import UIKit

class ProgressViewController: WABaseController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
    }
    
    func setupView() {
        title = "Workout Progress"
        navigationController?.tabBarItem.title = R.Strings.TabBar.progress
        
        addNavbarButton(at: .left, with: "Export")
        addNavbarButton(at: .right, with: "Details")
    }


}
