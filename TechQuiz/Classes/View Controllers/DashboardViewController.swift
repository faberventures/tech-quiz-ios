//
//  DashboardViewController.swift
//  TechQuiz
//
//  Created by Ivan Bruel on 26/01/15.
//  Copyright (c) 2015 Faber Ventures. All rights reserved.
//

import UIKit

class DashboardViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var dashboardTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cellName = ""
        
        switch indexPath.row {
        case 0:
            cellName = "CellHeader"
        case 1:
            cellName = "ButtonStartCell"
        case 2:
            cellName = "ButtonHistorytCell"
        case 3:
            cellName = "ButtonLogoutCell"
        default:
            cellName = "CellHeader"
        }
        
        var cell = tableView.dequeueReusableCellWithIdentifier(cellName) as UITableViewCell

        return cell
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        
        var height = 0
        
        switch indexPath.row {
        case 0:
            height = 260
        case 1:
            height = 80
        case 2:
            height = 80
        case 3:
            height = 80
        default:
            height = 0
        }
        
        return CGFloat(height)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
