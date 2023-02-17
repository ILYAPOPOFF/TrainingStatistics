//
//  SessionController.swift
//  TrainingStatistics
//
//  Created by ILYA POPOV on 11.02.2023.
//

import UIKit

class SessionViewController: WABaseController {
    
    private let timerView = TimerView()
    private let timerDuration = 3615.0
    
    override func navBarLeftButtonHandler() {
        if timerView.state == .isStopped {
            timerView.startTimer { progress in 
                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                    self.navBarRightButtonHandler()
                }
            }
        } else {
            timerView.pauseTimer()
        }
        
        timerView.state = timerView.state == .isRunning ? .isStopped : .isRunning
        setTitleForNavbarButton(timerView.state == .isRunning ? "Pause" : "Start   ", at: .left)
        
    }
    
    override func navBarRightButtonHandler() {
        timerView.stopTimer()
        timerView.state = .isStopped
        
        setTitleForNavbarButton("Start   ", at: .left)
    }
}

extension SessionViewController {
    override func setupViews() {
        super.setupViews()
        
        view.setupView(timerView)
    }
    
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
            
            timerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            timerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
            timerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
        ])
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        
        title = "High Intensity Cardio"
        navigationController?.tabBarItem.title = R.Strings.TabBar.session
        
        addNavbarButton(at: .left, with: "Start   ")
        addNavbarButton(at: .right, with: "Finish")
        
        timerView.configure(with: timerDuration, progress: 0)
        
        //Метод для остановки таймера по его заполнению
        timerView.callBack = { progress in
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                self.navBarRightButtonHandler()
                print(progress)
            }
        }
    }
}


