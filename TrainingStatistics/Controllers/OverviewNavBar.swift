//
//  OverviewNavBar.swift
//  TrainingStatistics
//
//  Created by ILYA POPOV on 13.02.2023.
//

import UIKit

final class OverviewNavBar: BaseView {
    
    private let titleLabel = UILabel()
    private let allWorkoutsButton = WAButton(with: .secondary)
    private let addButton = UIButton()
    
    private let weekView = WeekView()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        addBottomBorder(with: R.Colors.separator, height: 1)
    }
    
    func addAllWorkoutsAction(_ action: Selector, with target: Any?) {
        allWorkoutsButton.addTarget(target, action: action, for: .touchUpInside)
    }
    
    func addAdditingAction(_ action: Selector, with target: Any?) {
        addButton.addTarget(target, action: action, for: .touchUpInside)
    }
    
}

extension OverviewNavBar {
    override func setupViews() {
        super.setupViews()
        
        setupView(titleLabel)
        setupView(addButton)
        setupView(allWorkoutsButton)
        setupView(weekView)
    }
    
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
            addButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 8),
            addButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            addButton.heightAnchor.constraint(equalToConstant: 28),
            addButton.widthAnchor.constraint(equalToConstant: 28),
            
            allWorkoutsButton.topAnchor.constraint(equalTo: addButton.topAnchor),
            allWorkoutsButton.trailingAnchor.constraint(equalTo: addButton.leadingAnchor, constant: -12),
            allWorkoutsButton.heightAnchor.constraint(equalToConstant: 28),
            
            titleLabel.centerYAnchor.constraint(equalTo: addButton.centerYAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: allWorkoutsButton.leadingAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            
            weekView.topAnchor.constraint(equalTo: addButton.bottomAnchor, constant: 15),
            weekView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            weekView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            weekView.heightAnchor.constraint(equalToConstant: 47),
            weekView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -15),
        ])
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        
        backgroundColor = .white
        
        titleLabel.text = R.Strings.NavBar.overview
        titleLabel.textColor = R.Colors.titleGray
        titleLabel.font = R.Fonts.helveticaRegular(with: 22)
        
        allWorkoutsButton.setTitle(R.Strings.Overview.allWorkOutsButton)
        addButton.setImage(R.Image.Common.add, for: .normal)
        
    }
}

