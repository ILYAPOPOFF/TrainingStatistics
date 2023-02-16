//
//  Date + ext.swift
//  TrainingStatistics
//
//  Created by ILYA POPOV on 13.02.2023.
//

import Foundation

extension Date {
    
        static var calendar: Calendar {
            //return Calendar.current
            var calendar = Calendar(identifier: .gregorian)
            calendar.firstWeekday = 2
            return calendar
        }
        
        var startOfweek: Date {
            let components = Date.calendar.dateComponents([.yearForWeekOfYear, .weekOfYear], from: self)
            guard  let firstDay = Date.calendar.date(from: components) else { return self }
            return Date.calendar.date(byAdding: .day, value: 1, to: firstDay) ?? self
        }
    
    func agoForward(to days: Int) -> Date {
        return Date.calendar.date(byAdding: .day, value: days, to: self) ?? self
    }
    
    func stripTime() -> Date {
        let components = Date.calendar.dateComponents([.year, .month, .day], from: self)
        return Date.calendar.date(from: components) ?? self
    }
    
}
