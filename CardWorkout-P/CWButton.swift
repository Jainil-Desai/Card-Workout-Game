//
//  CWButton.swift
//  CardWorkout-P
//
//  Created by Jainil Desai on 1/10/23.
//

import UIKit

class CWButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // Initializing our own properties: buttonBackgroundColor and title
    init(buttonBackgroundColor : UIColor, title : String) {
        super.init(frame: .zero)
        self.backgroundColor = buttonBackgroundColor
        setTitle(title, for: .normal)
        configure()
    }
    
    func configure() {
        layer.cornerRadius = 8
        titleLabel?.font = .systemFont(ofSize: 19, weight: .bold)
        setTitleColor(.white, for: .normal)
        translatesAutoresizingMaskIntoConstraints = false
    }
    
}
