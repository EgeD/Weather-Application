//
//  DenemeViewController.swift
//  weatherProject
//
//  Created by Ege on 23.12.2019.
//  Copyright © 2019 Ege Dincer. All rights reserved.
//

import UIKit

extension FiveDayViewController: FiveDayDataSourceDelegate {
    func setForecastLabels(forecast: FiveDayData) {
        currentWeather = forecast.list[0].weather[0].main
        latitude = forecast.city.coord.lat
        longitude = forecast.city.coord.lon
        fiveDayArray.append(forecast)
        self.fiveDayTable.reloadData()
    }
}

extension FiveDayViewController: UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fiveDayArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "fiveCell", for: indexPath) as! FiveDayTableViewCell
        
        let forecast = fiveDayArray[indexPath.row]
        cell.cityName2.text = selectedCity
        
        cell.firstHour2.text = forecast.list[0].weather[0].main + " " + String(format: " %.1f ", forecast.list[0].main.temp - 273.15) + "°C"
        var dateArr = forecast.list[0].dt_txt.components(separatedBy: " ")
        cell.firstDate2.text = dateArr[1]
        
        cell.secondHour2.text = forecast.list[1].weather[0].main + " " + String(format: " %.1f ", forecast.list[1].main.temp - 273.15) + "°C"
        var dateArr2 = forecast.list[1].dt_txt.components(separatedBy: " ")
        cell.secondDate2.text = dateArr2[1]

        cell.thirdHour2.text = forecast.list[2].weather[0].main  + " " + String(format: " %.1f ", forecast.list[2].main.temp - 273.15) + "°C"
        var dateArr3 = forecast.list[2].dt_txt.components(separatedBy: " ")
        cell.thirdDate2.text = dateArr3[1]
        var index = 0
        
        for dates in forecast.list{
            let date = dates.dt_txt.components(separatedBy: " ")
            if (date[1] == "00:00:00" && index == 0) {
                cell.firstDay2.text = date[0]
                cell.firstDayForecast2.text = dates.weather[0].main + String(format: " %.1f ", dates.main.temp - 273.15) + "°C"
                index += 1
            }
            else if(date[1] == "00:00:00" && index == 1) {
                cell.secondDay2.text = date[0]
                cell.secondDayForecast2.text = dates.weather[0].main + " " + String(format: " %.1f ", dates.main.temp - 273.15) + "°C"
                index += 1
            }else if(date[1] == "00:00:00" && index == 2){
                cell.thirdDay2.text = date[0]
                cell.thirdDayForecast2.text = dates.weather[0].main + String(format: " %.1f ", dates.main.temp - 273.15) + "°C"
                index += 1
            }else if (date[1] == "00:00:00" && index == 3){
                cell.fourthDay2.text = date[0]
                cell.fourthDayForecast2.text = dates.weather[0].main + String(format: " %.1f ", dates.main.temp - 273.15) + "°C"
                index += 1
            }else if (date[1] == "00:00:00" && index == 4){
                cell.fifthDay2.text = date[0]
                cell.fifthDayForecast2.text = dates.weather[0].main + String(format: " %.1f ", dates.main.temp - 273.15) + "°C"
                index += 1
            }
        }
        return cell
    }
}

class FiveDayViewController: UIViewController {

    @IBOutlet weak var fiveDayTable: UITableView!
    
    var selectedCity: String?
    var currentWeather: String?
    var latitude: Double?
    var longitude: Double?
    var fiveDayArray:[FiveDayData] = []

    let test = FiveDayDataSource()
    
    override func viewDidLoad() {
        title = selectedCity
        test.delegate = self
        test.loadFiveDayForecast(location: selectedCity!)
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.fiveDayTable.flashScrollIndicators()
    }
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "history"{
            let destination = segue.destination as! HistoryViewController
            destination.selectedCityHistory = selectedCity
            destination.selectedCityLongitude = longitude
            destination.selectedCityLatitude = latitude
        }else{
            let destination = segue.destination as! TopWearViewController
            destination.weather = currentWeather
        }
    }
}
