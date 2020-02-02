//
//  EmojiTableViewCell.swift
//  EmojiDectionary
//
//  Created by Sola on 2020/2/1.
//  Copyright © 2020 Sola. All rights reserved.
//

import UIKit

class EmojiTableViewCell: UITableViewCell {

    // (Label, Outlet, symbolLabel)
    @IBOutlet var symbolLabel: UILabel!
    // (Label, Outlet, nameLabel)
    @IBOutlet var nameLabel: UILabel!
    // (Label, Outlet, descriptionLabel)
    @IBOutlet var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func update(with emoji: Emoji) {
        symbolLabel.text = emoji.symbol
        nameLabel.text = emoji.name
        descriptionLabel.text = emoji.description
    }
    
}
