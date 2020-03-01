//
//  TemperatureDescription.swift
//  weatherProject
//
//  Created by Ege on 16.12.2019.
//  Copyright © 2019 Ege Dincer. All rights reserved.
//

import Foundation

struct WeatherData: Decodable{
    let coord: Coord
    let weather: [Weather]
    let base: String
    let main: MainWeather
    let visibility: Double
    let wind: WindMain
    let clouds: Clouds
    let dt: Double
    let sys: SysForGeneral
    let id: Int
    let name: String
    let cod: Int
    
}

struct SysForGeneral: Decodable{
    let type: Int
    let id: Int
    let country: String
    let sunrise: Int
    let sunset: Int
    
}
struct MainWeather: Decodable {
    let temp: Double
    let pressure: Double
    let humidity: Double
    let temp_min: Double
    let temp_max: Double
}
struct WindMain: Decodable {
    let speed: Double
}






