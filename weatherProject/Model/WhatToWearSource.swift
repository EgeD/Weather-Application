//
//  WhatToWearSource.swift
//  weatherProject
//
//  Created by Ege on 17.12.2019.
//  Copyright © 2019 Ege Dincer. All rights reserved.
//

import Foundation

class WhatToWearSource{

    func getTopWear(weather: String) -> String{
        if (weather == "Rain"){
             return "coat"
         }else if(weather == "Clouds" || weather == "Fog"){
             return "sweater"
         }else{
             return "shirt"
         }
    }
    
    func getBelowWear(weather: String) -> String {
        if (weather == "Rain"){
            return "boat"
        }else if(weather == "Clouds" || weather == "Fog"){
            return "jean"
        }else{
            return "short"
        }
    }
    
    func getComment(weather: String) -> String{
        if (weather == "Rain"){
            return "Weather seems that it might be cold so be aware"
        }else if(weather == "Clouds" || weather == "Fog"){
            return "Weather seems that a little cozy so might want to take some trips :)"
        }else{
            return "Weather seems nice today, trying going outside to have fun"
        }
    }
}

