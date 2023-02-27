//
//  Resouces.swift
//  TrainingStatistics
//
//  Created by ILYA POPOV on 11.02.2023.
//

import UIKit

enum R {
    enum Colors {
        static let active = UIColor(hexString: "#437BFE")
        static let inActive = UIColor(hexString: "#929DA5")
        
        static let background = UIColor(hexString: "#F8F9F9")
        static let separator = UIColor(hexString: "#E8ECEF")
        static let secondary = UIColor(hexString: "#F0F3FF")
        
        static let titleGray = UIColor(hexString: "#454C77")
    }
    
    enum Strings {
        enum TabBar {
            static let overview = "Overview"
            static let session = "Session"
            static let progress = "Progress"
            static let settings = "Settings"
        }
        
        enum NavBar {
            static var overview = "Today"
        }
        
        enum Overview {
            static var allWorkOutsButton = "All Workouts"
        }
        
        enum Session {
            enum Stats {
                static let elapsedTime = "Elapsed Time"
                static let remainingTime = "Remaining Time"
                
                static let workoutStats = "Workout stats"
                static let averagePace = "Average pace"
                static let heartRate = "Heart rate"
                static let totalDistance = "Total distance"
                static let totalSteps = "Total steps"
                
                static let stepsCounter = "Steps Counter"
            }
        }
    }
    
    enum Image {
        enum TabBar {
            static let overview = UIImage(named: "overview_tab")
            static let session = UIImage(named: "session_tab")
            static let progress = UIImage(named: "progress_tab")
            static let settings = UIImage(named: "settings_tab")
        }
        
        enum Common {
            static let downArrow = UIImage(named: "down_arrow")
            static let add = UIImage(named: "add_button")
        }
        
        enum Session {
            enum Stats {
                static let averagePace = UIImage(named: "average_pace")
                static let heartRate = UIImage(named: "heart_rate")
                static let totalDistance = UIImage(named: "total_distance")
                static let totalSteps = UIImage(named: "total_steps")
            }
        }
    }
    
    enum Fonts {
        static func helveticaRegular(with size: CGFloat) -> UIFont {
            UIFont(name: "Helvetica", size: size) ?? UIFont()
        }
    }
    
}
