//
//  LevelTableViewCell.swift
//  GuessTheCelebrity
//
//  Created by Saad on 4/12/16.
//  Copyright © 2016 Saad. All rights reserved.
//

import UIKit

class LevelTableViewCell: UITableViewCell {

    @IBOutlet var rightButton: UIButton!
    @IBOutlet var leftButton: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
