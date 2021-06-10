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

class ViewController: UIViewController, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
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
        
        switch indexPath.section {
        case 0:
            cell.textLabel?.text = dailyTasks[indexPath.row]
        case 1:
            cell.textLabel?.text = weeklyTasks[indexPath.row]
        case 2:
            cell.textLabel?.text = monthlyTasks[indexPath.row]
        default:
            cell.textLabel?.text = "This shouldn't happen"
        }
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
    let dailyTasks = ["Check all windows",
                      "Check all doors",
                      "Is the boiler fueled?",
                      "Check mailbox",
                      "Empty trash",
                      "If freezing, check water pipes",
                      "Document \"strange and unusual\" events",]
    
    let weeklyTasks = ["Check inside all cabins",
                       "Flush all toilets",
                       "Walk perimeter",]
    
    let monthlyTasks = ["Test security alarm",
                        "Test motion detectors",
                        "Test smoke alarms"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func changeBg(_ sender: Any) {
        view.backgroundColor = UIColor.darkGray
        // get all elements that are in the top view object
        let everything = view.subviews
        
        for eachView in everything {
            // is a label
            if eachView is UILabel {
                // downcast as uilabel
                // ! force it to down cast or else it will give us errs
                let currLbl = eachView as! UILabel
                currLbl.textColor = UIColor.lightGray
            }
        }
    }
    

}

