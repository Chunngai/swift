//
//  ViewController.swift
//  Concentration
//
//  Created by Sola on 2020/1/26.
//  Copyright © 2020 Sola. All rights reserved.
//

import UIKit

// Controller
class ViewController: UIViewController {
    var numberOfPairsOfCards: Int {
            return (cardButtons.count + 1) / 2
    }

    private lazy var game = Concentration(numberOfPairsOfCards: numberOfPairsOfCards)

    // Code related to buttons (cards)
    // (Outlet) Buttons (cards)
    @IBOutlet private var cardButtons: [UIButton]!

    // (Action) The buttons (cards) can be touched
    @IBAction private func touchCard(_ sender: UIButton) {
        flipCount += 1
        if let cardNumber = cardButtons.firstIndex(of: sender) {
            game.chooseCard(at: cardNumber)
            updateViewFromModel()
        }
    }

    // Supports the action of the buttons (cards)
    private func updateViewFromModel() {
        for index in cardButtons.indices {
            let button = cardButtons[index]
            let card = game.cards[index]
            if card.isFaceUp {
                button.setTitle(emoji(for: card), for: UIControl.State.normal)
                button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            } else {
                button.setTitle("", for: UIControl.State.normal)
                button.backgroundColor = card.isMatched ? #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 0) : #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
            }
        }
    }

    // Supports updateViewFromModel(), which then supports the action of the buttons (cards)
    // private var emojiChoices = ["🦇", "😱", "🙀", "😈", "🎃", "👻", "🍭", "🍬", "🍎"]
    private var emojiChoices = "🦇😱🙀😈🎃👻🍭🍬🍎"
    private var emoji = [Card:String]()
    private func emoji(for card: Card) -> String {
        if emoji[card] == nil, emojiChoices.count > 0 {
            let randomStringIndex = emojiChoices.index(emojiChoices.startIndex, offsetBy: emojiChoices.count.arc4random)
            emoji[card] = String(emojiChoices.remove(at: randomStringIndex))
        }
        return emoji[card] ?? "?"
    }

    // Code related to flipCount
    // (Outlet) The label
    @IBOutlet private weak var flipCountLabel: UILabel! {
        didSet {
            updateFlipCountLabel()
        }
    }

    // Supports the behavior of the label
    private(set) var flipCount = 0 {
        didSet {
            updateFlipCountLabel()
        }
    }
    var numberOfPairsOfCards: Int {
            return (cardButtons.count + 1) / 2
    }
    // The behavior of the label
    private func updateFlipCountLabel() {
        let attributes: [NSAttributedString.Key:Any] = [
            .strokeWidth : 5.0,
            .strokeColor : #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        ]
        let attributedString = NSAttributedString(string: "Flips: \(flipCount)", attributes: attributes)
        flipCountLabel.attributedText = attributedString
    }
}

extension Int {
    var arc4random: Int {
        if self > 0 {
            return Int(arc4random_uniform(UInt32(self)))
        } else if self < 0 {
            return -Int(arc4random_uniform(UInt32(abs(self))))
        } else {
            return 0
        }
    }
}
