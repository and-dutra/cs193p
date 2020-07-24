//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Andre on 24/07/20.
//  Copyright © 2020 Andre. All rights reserved.
//

import SwiftUI

class EmojiMemoryGame {
    private var gameModel: MemoryGame<String> = MemoryGame<String>(numberOfPairs: 2)
    
    var cards: Array<MemoryGame<String>.Card> {
        gameModel.cards
    }
    
    func choose(card: MemoryGame<String>.Card) {
        gameModel.choose(card: card)
    }
}
