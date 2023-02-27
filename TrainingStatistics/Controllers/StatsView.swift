//
//  StatsView.swift
//  TrainingStatistics
//
//  Created by ILYA POPOV on 27.02.2023.
//

import UIKit

final class StatsView: WABaseInfoView {
    
    private let stackView : UIStackView = {
        let view = UIStackView()
        view.axis = .vertical
        view.spacing = 15
        view.distribution = .fillEqually
        return view
    }()
    
//    override func setupViews() {
//        super.setupViews()
//
//        setupView(itemView)
//        itemView.configure(with: StatsItemView.StatsItem(image: R.Image.Session.Stats.heartRate, value: "155 bpm", title: R.Strings.Session.Stats.heartRate.uppercased()))
//
//        NSLayoutConstraint.activate([
//
//            itemView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
//            itemView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
//
//
//        ])
//    }
    
}

extension StatsView {
    override func setupViews() {
        super.setupViews()
        
        
    }
    
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
            
            
            
        ])
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        
        
        
    }
}
