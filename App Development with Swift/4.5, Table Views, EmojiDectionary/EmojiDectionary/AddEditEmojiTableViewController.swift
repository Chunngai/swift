//
//  AddEditEmojiTableViewController.swift
//  EmojiDectionary
//
//  Created by Sola on 2020/2/1.
//  Copyright © 2020 Sola. All rights reserved.
//

import UIKit

class AddEditEmojiTableViewController: UITableViewController {
    
    // (Text Field, Outlet, symbolTextField)
    @IBOutlet var symbolTextField: UITextField!
    // (Text Field, Outlet, nameTextField)
    @IBOutlet var nameTextField: UITextField!
    // (Text Field, Outlet, descriptionTextField)
    @IBOutlet var descriptionTextField: UITextField!
    // (Text Field, Outlet, usageTextField)
    @IBOutlet var usageTextField: UITextField!
    
    // (Button, Outlet, saveButton)
    @IBOutlet var saveButton: UIBarButtonItem!
    
    var emoji: Emoji?

    override func viewDidLoad() {
        super.viewDidLoad()

        if let emoji = emoji {
            symbolTextField.text = emoji.symbol
            nameTextField.text = emoji.name
            descriptionTextField.text = emoji.description
            usageTextField.text = emoji.usage
        }
        
        updateSaveButtonState()
    }

    func updateSaveButtonState() {
        let symbolText = symbolTextField.text ?? ""
        let nameText = nameTextField.text ?? ""
        let descriptionText = descriptionTextField.text ?? ""
        let usageText = usageTextField.text ?? ""
        
        saveButton.isEnabled = !symbolText.isEmpty && !nameText.isEmpty &&
            !descriptionText.isEmpty && !usageText.isEmpty
    }
    
    @IBAction func textEditingChanged(_ sender: UITextField) {
        updateSaveButtonState()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "saveUnwind" else {
            return
        }
        
        let symbol = symbolTextField.text ?? ""
        let name = nameTextField.text ?? ""
        let description = descriptionTextField.text ?? ""
        let usage = usageTextField.text ?? ""
        emoji = Emoji(symbol: symbol, name: name, description: description, usage: usage)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
