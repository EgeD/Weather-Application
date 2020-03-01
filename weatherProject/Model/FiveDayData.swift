//
//  fiveDayData.swift
//  weatherProject
//
//  Created by Ege on 16.12.2019.
//  Copyright © 2019 Ege Dincer. All rights reserved.
//

import Foundation

struct FiveDayData:Decodable {
    let cod: String
    let message:Double
    let cnt: Int
    let list: [fiveList]
    let city: City
}

struct City:Decodable{
    let id: Int
    let name: String
    let coord: Coord
    let country: String
}

struct fiveList: Decodable {
    let dt: Int
    let main: Main
    let weather: [Weather]
    let clouds: Clouds
    let wind: Wind
    let sys: Sys
    let dt_txt: String
    
}

struct Clouds: Decodable {
    let all: Int
}

struct Coord: Decodable {
    let lat: Double
    let lon: Double
}

struct Main: Decodable {
    let humidity: Double
    let pressure: Double
    let temp: Double
    let temp_max: Double
    let temp_min: Double
    let temp_kf: Double
    let grnd_level: Double
    let sea_level: Double
}

struct Sys: Decodable {
    let pod: String
}

struct Weather: Decodable {
    let description: String
    let icon: String
    let id: Int
    let main: String
}

struct Wind: Decodable {
    let deg: Double
    let speed: Double
}
    

