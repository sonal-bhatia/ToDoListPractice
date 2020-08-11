//
//  ToDoTableViewController.swift
//  ToDoList
//
//  Created by Sonal Bhatia on 8/10/20.
//  Copyright © 2020 Sonal Bhatia. All rights reserved.
//

import UIKit

class ToDoTableViewController: UITableViewController {

    var listOfToDo : [ToDoClass] = []
    
    func createToDo() -> [ToDoClass] {
        let satPrepToDo = ToDoClass()
        satPrepToDo.description = "Take SAT Practice Test"
        satPrepToDo.important = true
        
        let satPracticeToDo = ToDoClass()
        satPracticeToDo.description = "Use SAT Math Practice App"
        //important is set to false by default
        
        let walkSimbaToDo = ToDoClass()
        walkSimbaToDo.description = "Take Simba on a walk"
        walkSimbaToDo.important = true
        
        return [satPrepToDo, satPracticeToDo, walkSimbaToDo]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        listOfToDo = createToDo()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 3
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...
        let eachToDo = listOfToDo[indexPath.row]
        cell.textLabel?.text = eachToDo.description
        
        if eachToDo.important {
            cell.textLabel?.text = "❗️" + eachToDo.description
        } else {
            cell.textLabel?.text = eachToDo.description
        }

        return cell
    }
    /*
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
