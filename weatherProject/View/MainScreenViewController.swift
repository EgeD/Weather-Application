//
//  MainScreenViewController.swift
//  weatherProject
//
//  Created by Ege on 16.12.2019.
//  Copyright © 2019 Ege Dincer. All rights reserved.
//

import UIKit


extension MainScreenViewController: WeatherDataSourceDelegate {
    func weatherArrayLoaded (weather: WeatherData) {
        weatherArray.append(weather)
        self.weatherTable.reloadData()
    }
}

extension MainScreenViewController: UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return weatherArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "weatherCell", for: indexPath) as! WeatherTableViewCell
        
        let city = weatherArray[indexPath.row]
        
        cell.cellCity.text = city.name
        cell.cellDescription.text = city.weather[0].description
        
        let temp = city.main.temp - 273.15
        cell.tempLabel.text = String(format: " %.1f ", temp) + " °C"
        cell.cellIcon.image = UIImage(named: city.weather[0].icon)
        
        return cell
    }
}

class MainScreenViewController: UIViewController {
    @IBOutlet weak var weatherTable: UITableView!
    
    var weatherArray:[WeatherData] = []
    let weatherObject = WeatherDataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "List Of Cities"
        // Do any additional setup after loading the view.
        weatherObject.delegate = self
        weatherObject.getWeatherData(location: "Istanbul")
        weatherObject.getWeatherData(location: "London")
        weatherObject.getWeatherData(location: "Paris")
        weatherObject.getWeatherData(location: "Amsterdam")
        weatherObject.getWeatherData(location: "Vienna")
        weatherObject.getWeatherData(location: "Berlin")
    }
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        let cell = sender as! WeatherTableViewCell
        let indexPath = weatherTable.indexPath(for: cell)
        
        if let indexPath = indexPath {
            let capital = weatherArray[indexPath.row].name
            let destination = segue.destination as! FiveDayViewController
            
            destination.selectedCity = capital
        }
    }
}
