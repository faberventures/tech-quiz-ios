//
//  DashboardButtonTableViewCell.swift
//  TechQuiz
//
//  Created by Pedro Ivo B Gimenes on 27/01/15.
//  Copyright (c) 2015 Faber Ventures. All rights reserved.
//

import UIKit

class DashboardButtonTableViewCell: UITableViewCell {

    var viewController = UIViewController()
    
    @IBOutlet weak var button: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func updateCell(id:Int, viewController: UIViewController) {
        self.viewController = viewController
        self.button.tag = id;
        var title = ""
        if id == 1 {
            title = "Start"
        }
        else if id == 2 {
            title = "History"
        }
        else {
            title = "Logout"
        }
        
        self.button.setTitle(title, forState: UIControlState.Normal)
    }

    @IBAction func buttonClick(sender: UIButton) {
        var segue = ""
        if sender.tag == 1 {
            segue = "subjectsSegue"
        }
        else if sender.tag == 2 {
            segue = "userQuizesSegue"
        }
        else {
            //perform logout
        }
        viewController.performSegueWithIdentifier(segue, sender: viewController)
    }
}
