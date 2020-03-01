//
//  HistoryViewController.swift
//  weatherProject
//
//  Created by Ege on 16.12.2019.
//  Copyright © 2019 Ege Dincer. All rights reserved.
//

import UIKit

class HistoryViewController: UIViewController {

    @IBOutlet weak var historyText: UITextView!
    @IBOutlet weak var cityImage: UIImageView!
    
    var selectedCityHistory: String?
    var selectedCityLatitude: Double?
    var selectedCityLongitude: Double?

    let history = HistorySource()
    override func viewDidLoad() {
        super.viewDidLoad()
        title = selectedCityHistory
        history.fillHistoryArray()
        historyText.text = history.getCityHistory(city: selectedCityHistory!)
        cityImage.image = UIImage(named: selectedCityHistory!)
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.historyText.flashScrollIndicators()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! MoreViewController
        destination.latitude = selectedCityLatitude
        destination.longitude = selectedCityLongitude
        destination.city = selectedCityHistory
        
    }
}
