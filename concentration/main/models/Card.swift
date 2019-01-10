//
// Created by Jonathan Trowbridge on 2019-01-09.
// Copyright (c) 2019 Jonathan Trowbridge. All rights reserved.
//

import Foundation

struct Card {

    var isFlipped: Bool = false
    var isMatched: Bool = false
    var emoji: String

    init(emoji: String) {
        self.emoji = emoji
    }
}
