//
//  TabBarController.swift
//  TrainingStatistics
//
//  Created by ILYA POPOV on 11.02.2023.
//

import UIKit

enum Tabs: Int {
    case overview
    case session
    case progress
    case settings
}

class TabBarController: UITabBarController {
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        tabBar.tintColor = Resources.Colors.active
        tabBar.barTintColor = Resources.Colors.inActive
        tabBar.backgroundColor = .white
        
        tabBar.layer.borderColor = Resources.Colors.separator.cgColor
        tabBar.layer.borderWidth = 1
        tabBar.layer.masksToBounds = true
        
        let overviewController = OverviewViewController()
        let sessionsController = SessionViewController()
        let progressController = ProgressViewController()
        let settingsController = SettingsViewController()
        
        let overviewNavigation = NavBarController(rootViewController: overviewController)
        let sessionsNavigation = NavBarController(rootViewController: sessionsController)
        let progressNavigation = NavBarController(rootViewController: progressController)
        let settingsNavigation = NavBarController(rootViewController: settingsController)
        
        overviewNavigation.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.overview, image: Resources.Image.TabBar.overview, tag: Tabs.overview.rawValue)
        sessionsNavigation.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.session, image: Resources.Image.TabBar.session, tag: Tabs.session.rawValue)
        progressNavigation.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.progress, image: Resources.Image.TabBar.progress, tag: Tabs.progress.rawValue)
        settingsNavigation.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.settings, image: Resources.Image.TabBar.settings, tag: Tabs.settings.rawValue)
        
        setViewControllers([
            overviewNavigation, sessionsNavigation, progressNavigation, settingsNavigation
        ], animated: false)
    }
}
