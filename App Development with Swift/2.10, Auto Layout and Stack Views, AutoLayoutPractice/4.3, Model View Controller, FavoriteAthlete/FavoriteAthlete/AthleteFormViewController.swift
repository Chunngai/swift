//
//  AthleteFormViewController.swift
//  FavoriteAthlete
//
//  Created by Sola on 2020/1/31.
//

import UIKit

class AthleteFormViewController: UIViewController {
    
    var athlete: Athlete?
    
    // (Text Field, Outlet: nameTextField)
    @IBOutlet var nameTextField: UITextField!
    // (Text Field, Outlet: ageTextField)
    @IBOutlet var ageTextField: UITextField!
    // (Text Field, Outlet: leagueTextField)
    @IBOutlet var leagueTextField: UITextField!
    // (Text Field, Outlet: teamTextField)
    @IBOutlet var teamTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateView()
    }
    
    func updateView() {
        if let athlete = athlete {
            nameTextField.text = athlete.name
            ageTextField.text = athlete.age
            leagueTextField.text = athlete.league
            teamTextField.text = athlete.team
        }
    }
    
    @IBAction func save(_ sender: UIButton) {
        guard let name = nameTextField.text,
            let age = ageTextField.text,
            let league = leagueTextField.text,
            let team = teamTextField.text else {
                return
        }
        
        athlete = Athlete(name: name, age: age, league: league, team: team)
    }

}
