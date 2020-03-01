
//
//  File.swift
//  weatherProject
//
//  Created by Ege on 16.12.2019.
//  Copyright © 2019 Ege Dincer. All rights reserved.
//

import Foundation

protocol WeatherDataSourceDelegate {
    func weatherArrayLoaded (weather: WeatherData)
}

extension WeatherDataSourceDelegate {
    func weatherArrayLoaded (weather: WeatherData) { }
}

class WeatherDataSource{
    var delegate: WeatherDataSourceDelegate?
    var tempArray:[Double] = []

    let baseURL = "https://api.openweathermap.org/data/2.5/weather?q="
    let appID = "&APPID=f52694762b5d7e615033f54a73f90190"
    
    func getWeatherData (location:String)  {
        let session = URLSession.shared;
        let urlData = baseURL + location + appID
        
        if let url = URL(string: urlData) {
            var request = URLRequest(url: url)
            let session = URLSession.shared;
            
            let urlData = baseURL + location + appID
            if let url = URL(string: urlData) {
                var request = URLRequest(url: url)
                request.httpMethod = "GET"
                request.addValue("application/json", forHTTPHeaderField: "Content-Type")
                
                let dataTask = session.dataTask(with: request) { (data, response, error) in
                    
                    let decoder = JSONDecoder()
                    let forecast = try! decoder.decode(WeatherData.self, from: data!)
                    
                    DispatchQueue.main.async {
                        self.delegate?.weatherArrayLoaded(weather: forecast)
                    }
                }
                dataTask.resume()
            }
        }
    }
}
