//
//  WeatherTableViewCell.swift
//  weatherProject
//
//  Created by Ege on 16.12.2019.
//  Copyright © 2019 Ege Dincer. All rights reserved.
//

import UIKit

class WeatherTableViewCell: UITableViewCell {

    @IBOutlet weak var cellDescription: UILabel!

    @IBOutlet weak var tempLabel: UILabel!
    @IBOutlet weak var cellCity: UILabel!
    @IBOutlet weak var cellIcon: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
