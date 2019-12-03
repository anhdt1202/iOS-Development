//
//  AthleteFormViewController.swift
//  FavoriteAthlete
//
//  Created by AnhDT on 11/22/19.
//

import UIKit

class AthleteFormViewController: UIViewController {
    var athlete: Athlete?
    
    @IBOutlet weak var saveButtonPressed: UIButton!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var leagueTextField: UITextField!
    @IBOutlet weak var teamTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()
        // Do any additional setup after loading the view.
    }
    @IBAction func saveButtonPressed(_ sender: UIButton) {
        guard let name = nameTextField.text,
        let ageText = ageTextField.text,
        let age = Int(ageText),
        let league = leagueTextField.text,
        let team = teamTextField.text else {return}
        athlete = Athlete(name: name, age: age, league: league, team: team)
        performSegue(withIdentifier: "list", sender: self)
    }
    
    func updateView() {
        if let athlete = athlete {
            nameTextField.text = athlete.name
            ageTextField.text = "\(athlete.age)"
            leagueTextField.text = athlete.league
            teamTextField.text = athlete.team
            
        }
        
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
