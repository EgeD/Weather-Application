//
//  FiveDayDataSource.swift
//  weatherProject
//
//  Created by Ege on 17.12.2019.
//  Copyright © 2019 Ege Dincer. All rights reserved.
//

import Foundation

protocol FiveDayDataSourceDelegate {
    func setForecastLabels (forecast: FiveDayData)
}

extension FiveDayDataSourceDelegate {
    func setForecastLabels (forecast: FiveDayData) { }
}

class FiveDayDataSource{
    var delegate: FiveDayDataSourceDelegate?
    let baseURL = "https://api.openweathermap.org/data/2.5/forecast?q="
    let appID = "&APPID=f52694762b5d7e615033f54a73f90190"
    
    func loadFiveDayForecast(location:String){
        let session = URLSession.shared;
        
        let urlData = baseURL + location + appID
        //print(urlData)
        if let url = URL(string: urlData) {
            var request = URLRequest(url: url)
            request.httpMethod = "GET"
            request.addValue("application/json", forHTTPHeaderField: "Content-Type")
            
            let dataTask = session.dataTask(with: request) { (data, response, error) in
                //print("HERE: \(String.init(data: data!, encoding: .utf8))")
                
                let decoder = JSONDecoder()
                let fiveDay = try! decoder.decode(FiveDayData.self, from: data!)
                
                DispatchQueue.main.async {
                    self.delegate?.setForecastLabels(forecast: fiveDay)
                }
            }
            dataTask.resume()
        }
    }
}
