//
//  ViewController.swift
//  concentration
//
//  Created by Jonathan Trowbridge on 1/9/19.
//  Copyright © 2019 Jonathan Trowbridge. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var cardButtons: [UIButton]!

    @IBOutlet weak var labelFlipCount: UILabel!
    
    @IBAction func OnCardTouchUpInside(_ sender: UIButton) {
        concentration.flipCard(index: cardButtons.firstIndex(of: sender)!)

        updateViewComponents()
    }

    private let concentration = Concentration(
            emojis: ["👻", "💀", "☠️", "👽", "👾", "🤖", "🎃", "🦇"]
    )

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    private func updateViewComponents() {
        var cards = concentration.cards
        
        labelFlipCount.text = "Flips: \(concentration.flipCount)"
        
        for (index, card) in cards.enumerated() {
            var cardButton = cardButtons[index]

            if card.isFlipped {
                cardButton.setTitle(card.emoji, for: UIControl.State.normal)
                cardButton.backgroundColor = .white
                continue
            }

            cardButton.setTitle(nil, for: UIControl.State.normal)
            cardButton.backgroundColor = #colorLiteral(red: 0, green: 1, blue: 0.8801295161, alpha: 1)
        }
    }

}

