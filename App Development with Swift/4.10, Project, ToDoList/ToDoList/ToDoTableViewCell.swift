//
//  ToDoTableViewCell.swift
//  ToDoList
//
//  Created by Sola on 2020/2/3.
//  Copyright © 2020 Sola. All rights reserved.
//

import UIKit

class ToDoTableViewCell: UITableViewCell {

    weak var delegate: ToDoCellDelegate?
    
    @IBOutlet var isCompleteButton: UIButton!
    @IBOutlet var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func completeButtonTapped(_ sender: UIButton) {
        delegate?.checkmarkTapped(sender: self)
    }
}

protocol ToDoCellDelegate: class {
    func checkmarkTapped(sender: ToDoTableViewCell)
}
