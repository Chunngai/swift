//
//  ResultsViewController.swift
//  PersonalityQuiz
//
//  Created by Sola on 2020/1/30.
//  Copyright © 2020 Sola. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    var response: [Answer]!
    
    // (Label, Outlet, resultAnswerLabel)
    @IBOutlet var resultAnswerLabel: UILabel!
    // (Label, Outlet, resultDefinitionLabel)
    @IBOutlet var resultDefinitionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.hidesBackButton = true
        calculatePersonalityResult()
    }
 
    func calculatePersonalityResult() {
        var frequencyOfAnswers: [AnimalType: Int] = [:]
        
        let responseTypes = response.map { $0.type }
        
        for response in responseTypes {
            let newCount: Int
            
            if let oldCount = frequencyOfAnswers[response] {
                newCount = oldCount + 1
            } else {
                newCount = 1
            }
            
            frequencyOfAnswers[response] = newCount
        }
        
        let mostCommonAnswer = frequencyOfAnswers.sorted { $0.1 > $1.1 }.first!.key
        
        resultAnswerLabel.text = "You are a \(mostCommonAnswer.rawValue)"
        resultDefinitionLabel.text = mostCommonAnswer.definition
    }

}
