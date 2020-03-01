//
//  DenemeTableViewCell.swift
//  weatherProject
//
//  Created by Ege on 23.12.2019.
//  Copyright © 2019 Ege Dincer. All rights reserved.
//

import UIKit

class FiveDayTableViewCell: UITableViewCell {
    
    @IBOutlet weak var firstHour2: UILabel!
    @IBOutlet weak var secondHour2: UILabel!
    @IBOutlet weak var thirdHour2: UILabel!
    
    
    @IBOutlet weak var firstDate2: UILabel!
    @IBOutlet weak var secondDate2: UILabel!
    @IBOutlet weak var thirdDate2: UILabel!
    
    @IBOutlet weak var firstDay2: UILabel!
    @IBOutlet weak var secondDay2: UILabel!
    @IBOutlet weak var thirdDay2: UILabel!
    @IBOutlet weak var fourthDay2: UILabel!
    @IBOutlet weak var fifthDay2: UILabel!
    
    @IBOutlet weak var firstDayForecast2: UILabel!
    @IBOutlet weak var secondDayForecast2: UILabel!
    @IBOutlet weak var thirdDayForecast2: UILabel!
    @IBOutlet weak var fourthDayForecast2: UILabel!
    @IBOutlet weak var fifthDayForecast2: UILabel!
    
    @IBOutlet weak var cityName2: UILabel!
    @IBOutlet weak var wearButton2: UIButton!
    @IBOutlet weak var historyButton: UIButton!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
