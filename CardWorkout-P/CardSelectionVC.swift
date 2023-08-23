//
//  CardSelectionVC.swift
//  CardWorkout-P
//
//  Created by Jainil Desai on 1/10/23.
//

import UIKit

class CardSelectionVC: UIViewController {
    
    let cardImageView       = UIImageView()
    let stopButton          = CWButton(buttonBackgroundColor: .systemRed, title: "Stop!")
    let restartButton       = CWButton(buttonBackgroundColor: .systemGreen, title: "Restart")
    let rulesButton         = CWButton(buttonBackgroundColor: .systemBlue, title: "Rules")
    
    let cards: [UIImage]    = Deck.allValues
    var timer: Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureUI()
        startTimer()
    }
    
    func startTimer() {
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(showRandomCard), userInfo: nil, repeats: true)
    }
    
    
    @objc func showRandomCard() {
        cardImageView.image = cards.randomElement() ?? UIImage(named: "AS")
    }
    
    @objc func stopButtonTapped() {
        timer.invalidate()
    }
    
    @objc func restartButtonTapped() {
        timer.invalidate()
        startTimer()
    }
    
    
    func configureUI() {
        configureCardImageView()
        configureStopButton()
        configureRestartButton()
        configureRulesButton()
    }
    
    
    func configureCardImageView() {
        view.addSubview(cardImageView)
        cardImageView.translatesAutoresizingMaskIntoConstraints = false
        cardImageView.image = UIImage(named: "AS")
        
        // Programatic contraints
        NSLayoutConstraint.activate([
            cardImageView.widthAnchor.constraint(equalToConstant: 250), // width
            cardImageView.heightAnchor.constraint(equalToConstant: 350), // height
            cardImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor), // X-axis
            cardImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -75) // Y-axis
        ])
    }
    
    
    func configureStopButton() {
        view.addSubview(stopButton)
        stopButton.addTarget(self, action: #selector(stopButtonTapped), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            stopButton.widthAnchor.constraint(equalToConstant: 260), // width
            stopButton.heightAnchor.constraint(equalToConstant: 50), // height
            stopButton.centerXAnchor.constraint(equalTo: view.centerXAnchor), // X-axis
            stopButton.topAnchor.constraint(equalTo: cardImageView.bottomAnchor, constant: 30) // Y-axis
        ])
    }
    
    
    func configureRestartButton() {
        view.addSubview(restartButton)
        restartButton.addTarget(self, action: #selector(restartButtonTapped), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            restartButton.widthAnchor.constraint(equalToConstant: 115), // width
            restartButton.heightAnchor.constraint(equalToConstant: 50), // height
            restartButton.leadingAnchor.constraint(equalTo: stopButton.leadingAnchor), // X-axis
            restartButton.topAnchor.constraint(equalTo: stopButton.bottomAnchor, constant: 20) // Y-axis
        ])
    }
    
    
    func configureRulesButton() {
        view.addSubview(rulesButton)
        // To show another screen, use addTarget and .touchUpInside
        rulesButton.addTarget(self, action: #selector(presentRulesVC), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            rulesButton.widthAnchor.constraint(equalToConstant: 115), // width
            rulesButton.heightAnchor.constraint(equalToConstant: 50), // height
            rulesButton.trailingAnchor.constraint(equalTo: stopButton.trailingAnchor), // X-axis
            rulesButton.topAnchor.constraint(equalTo: stopButton.bottomAnchor, constant: 20) // Y-axis
        ])
    }
    
    @objc func presentRulesVC() {
        present(RulesVC(), animated: true)
    }
}
