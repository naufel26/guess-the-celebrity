//
//  LevelViewController.swift
//  GuessTheCelebrity
//
//  Created by Saad on 4/11/16.
//  Copyright © 2016 Saad. All rights reserved.
//

import UIKit

class LevelViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var levelTopConstraint: NSLayoutConstraint!
    var levelImageNamesUnlock = ["level_1.png", "level_2.png", "level_3.png", "level_4.png", "level_5.png", "level_6.png", "level_7.png"]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        levelTopConstraint.constant = UIScreen.mainScreen().bounds.size.height * 0.12
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 7
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("levelTableViewCell", forIndexPath: indexPath) as! LevelTableViewCell
        if indexPath.row % 2 == 0 {
            cell.leftButton.hidden = false
            cell.leftButton.setBackgroundImage(UIImage(named: levelImageNamesUnlock[indexPath.row]), forState: UIControlState.Normal)
            cell.leftButton.setTitle("LEVEL - \(indexPath.row + 1)", forState: UIControlState.Normal)
            cell.leftButton.tag = indexPath.row
            cell.rightButton.hidden = true
        }
        else
        {
            cell.leftButton.hidden = true
            cell.rightButton.setBackgroundImage(UIImage(named: levelImageNamesUnlock[indexPath.row]), forState: UIControlState.Normal)
            cell.rightButton.setTitle("LEVEL - \(indexPath.row + 1)", forState: UIControlState.Normal)
            cell.rightButton.tag = indexPath.row
            cell.rightButton.hidden = false
        }
        
    
        return cell
        
    }
    @IBAction func levelButtonTapped(sender: UIButton) {
        
    }

    @IBAction func backButtonTapped(sender: AnyObject) {
        self.navigationController?.popViewControllerAnimated(true)
    }
}
