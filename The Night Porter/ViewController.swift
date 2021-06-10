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

class ViewController: UIViewController {

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

