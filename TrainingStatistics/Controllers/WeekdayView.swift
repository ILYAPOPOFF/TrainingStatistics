//
//  WeekdayView.swift
//  TrainingStatistics
//
//  Created by ILYA POPOV on 13.02.2023.
//

import UIKit

extension WeekView {

    final class WeekdayView: BaseView {
        
        private let nameLabel = UILabel()
        private let dateLabel = UILabel()
        private let stackView = UIStackView()
        
        
        func configure(with index: Int, and name: String) {
            
            let startOfWeek = Date().startOfweek
            let currentDay = startOfWeek.agoForward(to: index)
            let day = Calendar.current.component(.day, from: currentDay)
            
            let isToday = currentDay.stripTime() == Date().stripTime()
            
            backgroundColor = isToday ? Resources.Colors.active : Resources.Colors.background
            
            nameLabel.text = name.uppercased()
            nameLabel.textColor = isToday ? .white : Resources.Colors.inActive
            
            dateLabel.text = "\(day)"
            dateLabel.textColor = isToday ? .white : Resources.Colors.inActive
        }
    }
}

extension WeekView.WeekdayView {

    override func addView() {
        super.addView()
        
        addView(stackView)
        
        stackView.addArrangedSubview(nameLabel)
        stackView.addArrangedSubview(dateLabel)
    }

    override func constraint() {
        super.constraint()

        NSLayoutConstraint.activate([

            stackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: centerYAnchor),
            
        ])
    }

    override func configureView() {
        super.configureView()
        
        backgroundColor = Resources.Colors.background
        
        
        layer.cornerRadius = 5
        layer.masksToBounds = true
        
        nameLabel.font = Resources.Fonts.helveticaRegular(with: 9)
        nameLabel.textColor = Resources.Colors.titleGray
        nameLabel.textAlignment = .center
        
        dateLabel.font = Resources.Fonts.helveticaRegular(with: 15)
        dateLabel.textColor = Resources.Colors.titleGray
        dateLabel.textAlignment = .center
        
        stackView.spacing = 3
        stackView.axis = .vertical
        
    }

}
