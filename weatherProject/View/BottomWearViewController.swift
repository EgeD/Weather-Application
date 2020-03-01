//
//  BottomWearViewController.swift
//  weatherProject
//
//  Created by Ege on 24.12.2019.
//  Copyright © 2019 Ege Dincer. All rights reserved.
//

import UIKit

class BottomWearViewController: UIViewController {
    var weatherForBottom: String?
    let wear = WhatToWearSource()
    let buy = BuySource()
    
    @IBOutlet weak var weatherComment: UILabel!
    @IBOutlet weak var bottomImage: UIImageView!
    @IBOutlet weak var buyButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "What To Wear?"
        bottomImage.image = UIImage(named: wear.getBelowWear(weather: weatherForBottom!) )
        weatherComment.text = wear.getComment(weather:weatherForBottom!)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func bottomWearButton(sender: AnyObject) {
        if let url = URL(string: buy.getBelowWearLink(wear: wear.getBelowWear(weather: weatherForBottom!))){
                      UIApplication.shared.open(url)
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
}
