//
//  RulesVC.swift
//  CardWorkout-P
//
//  Created by Jainil Desai on 1/11/23.
//

import UIKit

class RulesVC: UIViewController {
    
    let titleLabel      = UILabel()
    let rulesLabel      = UILabel()
    let exerciseLabel   = UILabel()
    let goodLuck         = UILabel()
    
    let jokerImage      = UIImageView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureTitleLabel()
        configureRulesLabel()
        configureExerciseLabel()
        configureHaveFunLabel()
        configureJokerImage()
    }
    
    func configureTitleLabel() {
        view.addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.text = "Rules"
        titleLabel.font = .systemFont(ofSize: 40, weight: .bold)
        titleLabel.textAlignment = .center
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 60),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
        ])
    }
    
    func configureRulesLabel() {
        view.addSubview(rulesLabel)
        rulesLabel.translatesAutoresizingMaskIntoConstraints = false
        rulesLabel.text = "The value of each card represents the number of exercises you do. \n\nJ = 11, Q = 12, K = 13, A = 14"
        rulesLabel.font = .systemFont(ofSize: 20, weight: .semibold)
        rulesLabel.textAlignment = .center
        rulesLabel.numberOfLines = 0
        
        NSLayoutConstraint.activate([
            rulesLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 50),
            rulesLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            rulesLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
        ])
    }
    
    func configureExerciseLabel() {
        view.addSubview(exerciseLabel)
        exerciseLabel.translatesAutoresizingMaskIntoConstraints = false
        exerciseLabel.text = "♠️ = Sit-Up \n♦️ = Push-Up \n♣️ = Jumping Jacks \n♥️ = Burpees"
        exerciseLabel.font = .systemFont(ofSize: 20, weight: .semibold)
        exerciseLabel.textAlignment = .left
        exerciseLabel.numberOfLines = 0
        exerciseLabel.lineBreakMode = .byWordWrapping
        
        NSLayoutConstraint.activate([
            exerciseLabel.topAnchor.constraint(equalTo: rulesLabel.bottomAnchor, constant: 50),
            exerciseLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),
            exerciseLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
        ])
    }
    
    func configureHaveFunLabel() {
        view.addSubview(goodLuck)
        goodLuck.translatesAutoresizingMaskIntoConstraints = false
        goodLuck.text = "Good luck and have fun!"
        goodLuck.font = .systemFont(ofSize: 18, weight: .medium)
        goodLuck.textAlignment = .center
        goodLuck.numberOfLines = 0
        
        NSLayoutConstraint.activate([
            goodLuck.topAnchor.constraint(equalTo: exerciseLabel.bottomAnchor, constant: 60),
            goodLuck.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            goodLuck.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
        ])
    }
    
    func configureJokerImage() {
        view.addSubview(jokerImage)
        jokerImage.translatesAutoresizingMaskIntoConstraints = false
        jokerImage.image = UIImage(named: "good_luck")
        
        NSLayoutConstraint.activate([
            jokerImage.widthAnchor.constraint(equalToConstant: 300),
            jokerImage.heightAnchor.constraint(equalToConstant: 200),
            jokerImage.topAnchor.constraint(equalTo: goodLuck.bottomAnchor, constant: 20),
            jokerImage.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
}
