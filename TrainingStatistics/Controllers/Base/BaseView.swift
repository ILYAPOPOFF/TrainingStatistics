//
//  BaseView.swift
//  TrainingStatistics
//
//  Created by ILYA POPOV on 13.02.2023.
//

import UIKit

class BaseView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addView()
        constraint()
        configureView()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

@objc extension BaseView {
    func addView() {}
    
    func constraint() {}
    
    func configureView() {}
}
