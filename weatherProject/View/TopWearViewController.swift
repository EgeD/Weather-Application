//
//  WhatWearViewController.swift
//  weatherProject
//
//  Created by Ege on 16.12.2019.
//  Copyright © 2019 Ege Dincer. All rights reserved.
//

import UIKit

class TopWearViewController: UIViewController {
    var weather: String?
    let wear = WhatToWearSource()
    let buy = BuySource()

    @IBOutlet weak var weatherComment: UILabel!
    @IBOutlet weak var topWear: UIImageView!
    @IBOutlet weak var buyButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "What To Wear?"
        topWear.image = UIImage(named: wear.getTopWear(weather: weather!) )
        weatherComment.text = wear.getComment(weather:weather!)
    }
    
    @IBAction func topWearButton(sender: AnyObject) {
        if let url = URL(string: buy.getTopWearLink(wear: wear.getTopWear(weather: weather!))) {
        UIApplication.shared.open(url)
        }
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        let destination = segue.destination as! BottomWearViewController
        destination.weatherForBottom = weather
        
    }
}
