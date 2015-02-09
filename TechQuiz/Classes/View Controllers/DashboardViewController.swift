//
//  DashboardViewController.swift
//  TechQuiz
//
//  Created by Ivan Bruel on 26/01/15.
//  Copyright (c) 2015 Faber Ventures. All rights reserved.
//

import UIKit

class DashboardViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, DashboardButtonDelegate {
    
    @IBOutlet weak var dashboardTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableViewHeader()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        navigationController!.setNavigationBarHidden(true, animated: animated)
    }
    
    // MARK: View Setup
    func setupTableViewHeader() {
        let headerFrame = CGRect(x: 0, y: 0, width: CGRectGetWidth(dashboardTableView.frame), height: DashboardHeaderView.Constants.height)
        let headerView = DashboardHeaderView(frame: headerFrame)
        dashboardTableView.tableHeaderView = headerView
    }
    
    // MARK: UITableView DDS
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("ButtonCell") as DashboardButtonTableViewCell
        cell.updateCell(dashboardTitleForRow(indexPath.row))
        cell.delegate = self
        return cell
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return DashboardButtonTableViewCell.Constants.height
    }
    
    // MARK: Helper
    func dashboardTitleForRow(index: Int) -> String {
        if index == 0 {
            return "Start"
        }
        else if index == 1 {
            return "History"
        }
        else {
            return "Logout"
        }
    }
    
    // MARK: DashboardCellDelegate
    func dashboardButtonClicked(cell: DashboardButtonTableViewCell) {
        
        if let indexPath = dashboardTableView.indexPathForCell(cell) {
            if indexPath.row == 0 {
                performSegueWithIdentifier("subjectsSegue", sender: self)
            }
            else if indexPath.row == 1 {
                performSegueWithIdentifier("userQuizesSegue", sender: self)
            }
            else {
                // TODO add logout logic here
                navigationController?.popToRootViewControllerAnimated(true)
            }
        }
        
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
