//
// Created by Jonathan Trowbridge on 2019-01-09.
// Copyright (c) 2019 Jonathan Trowbridge. All rights reserved.
//

import Foundation

class Concentration {
    
    var cardCount: Int {
        return cards.count
    }
    
    var cards: [Card] {
        return Array(cardMapping.values)
    }
    
    private var cardMapping = [Int:Card]()
    private var emojis: [String]
    
    init(emojis: [String]) {
        self.emojis = emojis
        
        initializeCards(emojis)
    }

    private func initializeCards(_ emojis: [String]) {
        for emoji in emojis {
            let card = Card(emoji: emoji)
            let secondCard = Card(emoji: emoji)
            
            cardMapping[card.identifier] = card
            cardMapping[secondCard.identifier] = secondCard
        }
    }
    
    func flipCard(identifier: Int) {
        var card = cardMapping[identifier]
        
        if (card?.isFlipped == true) {
            card?.isFlipped = false
        } else {
            card?.isFlipped = false
        }
    }
    
}
