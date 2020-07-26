//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Andre on 24/07/20.
//  Copyright © 2020 Andre. All rights reserved.
//

import SwiftUI

class EmojiMemoryGame {
    private var gameModel: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis: Array<String> = ["👻","🎃"]
        
        return MemoryGame<String>(numberOfPairsOfCards: 2) { pairIndex in
            return emojis[pairIndex]
        }
    }
        
    var cards: Array<MemoryGame<String>.Card> {
        gameModel.cards
    }
    
    func choose(card: MemoryGame<String>.Card) {
        gameModel.choose(card: card)
    }
}
