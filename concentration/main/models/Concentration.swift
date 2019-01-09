//
// Created by Jonathan Trowbridge on 2019-01-09.
// Copyright (c) 2019 Jonathan Trowbridge. All rights reserved.
//

import Foundation

class Concentration {

    var cardCount: Int {
        return cards.count
    }

    private(set) var flipCount = 0
    private(set) var cards = [Card]()
    private var emojis: [String]

    init(emojis: [String]) {
        self.emojis = emojis

        initializeCards(emojis)
    }

    private func initializeCards(_ emojis: [String]) {
        for emoji in emojis {
            let card = Card(emoji: emoji)

            cards.insert(contentsOf: [card, card], at: 0)
        }
    }

    func flipCard(index: Int) {
        flipCount += 1
       
        var card = cards[index];

        if card.isFlipped {
            cards[index].isFlipped = false
            return
        }

        cards[index].isFlipped = true
    }

}
