//
//  FoodTableViewController.swift
//  Meal Tracker
//
//  Created by Sola on 2020/2/1.
//  Copyright © 2020 Sola. All rights reserved.
//

import UIKit

class FoodTableViewController: UITableViewController {
    
    var meals: [Meal] {
        let breakfast = Meal(name: "breakfast", food: [Food(name: "dumplings", description: "dumplings description"),
                                                       Food(name: "porridge", description: "porridge description"),
                                                       Food(name: "chimp dumplings", description: "chimp dumplings description")])
        let lunch = Meal(name: "lunch", food: [Food(name: "sushi", description: "sushi description"),
                                               Food(name: "tenpura", description: "tenpura description"),
                                               Food(name: "kareiraisu", description: "kareiraisu description")])
        let dinner = Meal(name: "dinner", food: [Food(name: "chicken", description: "chicken description"),
                                                 Food(name: "tomatoes", description: "tomatoes description"),
                                                 Food(name: "potatoes", description: "potatoes description")])
        
        return [breakfast, lunch, dinner]
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return meals.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return meals[0].food.count
        case 1:
            return meals[1].food.count
        case 2:
            return meals[2].food.count
        default:
            return 0
        }
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "foodCell", for: indexPath)
        let meal = meals[indexPath.section].food[indexPath.row]
        
        cell.textLabel?.text = meal.name
        cell.detailTextLabel?.text = meal.description
        
        return cell
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return meals[section].name
    }
}
