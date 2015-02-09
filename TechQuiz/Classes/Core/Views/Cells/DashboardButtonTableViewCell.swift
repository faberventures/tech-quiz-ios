//
//  DashboardButtonTableViewCell.swift
//  TechQuiz
//
//  Created by Pedro Ivo B Gimenes on 27/01/15.
//  Copyright (c) 2015 Faber Ventures. All rights reserved.
//

import UIKit

protocol DashboardButtonDelegate {
    func dashboardButtonClicked(cell: DashboardButtonTableViewCell)
}

class DashboardButtonTableViewCell: UITableViewCell {
    
    struct Constants {
        static let height: CGFloat = 80.0
    }
    
    var delegate: DashboardButtonDelegate!
    
    @IBOutlet weak var button: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func updateCell(title: String) {
        button.setTitle(title, forState: UIControlState.Normal)
    }

    @IBAction func buttonClick(sender: UIButton) {
        if delegate != nil {
            delegate.dashboardButtonClicked(self)
        }
    }
}
