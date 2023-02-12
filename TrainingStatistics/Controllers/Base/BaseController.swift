//
//  BaseController.swift
//  TrainingStatistics
//
//  Created by ILYA POPOV on 11.02.2023.
//

import UIKit

enum NavBarPosition {
    case left
    case right
}

class BaseController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addView()
        constraints()
        configure()
    }
}

@objc extension BaseController {
    
    func addView() {}
    
    func constraints() {}
    
    func configure() {
        view.backgroundColor = Resources.Colors.background
    }
    
    @objc func navBarLeftButtonHandler() {
        print("NavBar left button tapped")
    }
    
    @objc func navBarRightButtonHandler() {
        print("NavBar right button tapped")
    }
}

extension BaseController {
    
    func addNavbarButton(at position: NavBarPosition, with title: String) {
        let button = UIButton(type: .system)
        button.setTitle(title, for: .normal)
        button.setTitleColor(Resources.Colors.active, for: .normal)
        button.setTitleColor(Resources.Colors.inActive, for: .disabled)
        button.titleLabel?.font = Resources.Fonts.helveticaRegular(with: 17)
        
        switch position {
        case .left:
            button.addTarget(self, action: #selector(navBarLeftButtonHandler), for: .touchUpInside)
            navigationItem.leftBarButtonItem = UIBarButtonItem(customView: button)
        case .right:
            button.addTarget(self, action: #selector(navBarRightButtonHandler), for: .touchUpInside)
            navigationItem.rightBarButtonItem = UIBarButtonItem(customView: button)
        }
    }
}
