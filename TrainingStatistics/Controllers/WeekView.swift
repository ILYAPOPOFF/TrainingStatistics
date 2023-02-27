//
//  WeekView.swift
//  TrainingStatistics
//
//  Created by ILYA POPOV on 13.02.2023.
//

import UIKit

final class WeekView: WABaseView {
    
    private let calendar = Calendar.current
    private let stackView = UIStackView()

}

extension WeekView {

    override func setupViews() {
        super.setupViews()
        
        setupView(stackView)
    }

    override func constraintViews() {
        super.constraintViews()

        NSLayoutConstraint.activate([

            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor),

        ])
    }

    override func configureAppearance() {
        super.configureAppearance()
        
        stackView.spacing = 7
        stackView.distribution = .fillEqually
        
        var weekdays = Date.calendar.shortStandaloneWeekdaySymbols
        
        if Date.calendar.firstWeekday == 1 {
            let sun = weekdays.remove(at: 0)
            weekdays.append(sun)
        }
        
        weekdays.enumerated().forEach { index, name in
            let view = WeekdayView()
            view.configure(with: index, and: name)
            
            stackView.addArrangedSubview(view)
        }
    }

}
