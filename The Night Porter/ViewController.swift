//
//  ViewController.swift
//  The Night Porter
//
//  Created by Henry Doan on 5/13/21.
//
// link all the ui stuff appl provided to do ios apps, not just ui but infrastrure too
// sub view, a view obj inside another one
// none of the items doesn't have a unique id
// when draging controls, it doesn't generate swift or any code its just xml
import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    // Table view delegate methods
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You selected row \(indexPath.row) in section \(indexPath.section)")
    }
    
    // Table view data source methods
    func numberOfSections(in tableView: UITableView) -> Int {
        tableView.backgroundColor = UIColor.clear
        
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return dailyTasks.count
        case 1:
            return weeklyTasks.count
        case 2:
            return monthlyTasks.count
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var currentTask: Task!
        
        switch indexPath.section {
        case 0:
            currentTask = dailyTasks[indexPath.row]
        case 1:
            currentTask = weeklyTasks[indexPath.row]
        case 2:
            currentTask = monthlyTasks[indexPath.row]
        default:
            break
        }
        cell.textLabel!.text = currentTask.name
        
        if currentTask.completed {
            cell.textLabel?.textColor = UIColor.lightGray
            cell.accessoryType = .checkmark
        } else {
            cell.textLabel?.textColor = UIColor.black
            cell.accessoryType = .none
        }
        
        cell.backgroundColor = UIColor.clear
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "Daily Tasks"
        case 1:
            return "Weekly Tasks"
        case 2:
            return "Montly Tasks"
        default:
            return nil
        }
    }
    
    
    // create string arr of tasks
    let dailyTasks = [
        Task(name: "Check all windows", type: .daily, completed: false, lastCompleted: nil),
        Task(name: "Check all doors", type: .daily, completed: true, lastCompleted: nil),
        Task(name: "Is the boiler fueled?", type: .daily, completed: false, lastCompleted: nil),
        Task(name: "Check mailbox", type: .daily, completed: false, lastCompleted: nil),
        Task(name: "Empty trash", type: .daily, completed: false, lastCompleted: nil),
        Task(name:  "If freezing, check water pipes", type: .daily, completed: false, lastCompleted: nil),
        Task(name: "Document \"strange and unusual\" events", type: .daily, completed: false, lastCompleted: nil)
    ]
    
    let weeklyTasks = [
        Task(name: "Check inside all cabins", type: .weekly, completed: false, lastCompleted: nil),
        Task(name: "Flush all toilets", type: .weekly, completed: false, lastCompleted: nil),
        Task(name: "Walk perimeter", type: .weekly, completed: false, lastCompleted: nil)
    ]
    
    let monthlyTasks = [
        Task(name: "Test security alarm", type: .monthly, completed: false, lastCompleted: nil),
        Task(name: "Test motion detectors", type: .monthly, completed: false, lastCompleted: nil),
        Task(name: "Test smoke alarms", type: .monthly, completed: false, lastCompleted: nil)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func changeBg(_ sender: Any) {
        let mySwitch = sender as! UISwitch
        
        if mySwitch.isOn {
            view.backgroundColor = UIColor.darkGray

        } else {
            view.backgroundColor = UIColor.white

        }
    }
    

}

