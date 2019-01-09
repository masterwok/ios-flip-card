//
// Created by Jonathan Trowbridge on 2019-01-09.
// Copyright (c) 2019 Jonathan Trowbridge. All rights reserved.
//

import Foundation

struct Card {
    var identifier: Int
    
    var isFlipped: Bool = false
    var isMatched: Bool = false
    var emoji: String
    
    private static var identifierFactory = 0
    
    init(emoji: String) {
        Card.identifierFactory += 1
        self.identifier = Card.identifierFactory
        self.emoji = emoji
    }
}
