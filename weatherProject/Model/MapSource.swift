//
//  MapSource.swift
//  weatherProject
//
//  Created by Ege on 18.12.2019.
//  Copyright © 2019 Ege Dincer. All rights reserved.
//

import Foundation
import MapKit

protocol MapSourceDelegate {
    func annotationLoaded ()
}

class MapSource{
    
    var delegate: MapSourceDelegate?
    var coordinates: [Double] = []
    
    func getAnnotations(location: String) -> [Double]{
        if(location == "Istanbul"){
            coordinates.append(41.078731)
            coordinates.append(29.044610)
        }else if (location == "Vienna"){
            coordinates.append(48.210575)
            coordinates.append(16.376420)
        }else if (location == "Amsterdam"){
            coordinates.append(52.377629)
            coordinates.append(4.893877)
        }else if (location == "Paris"){
            coordinates.append(48.868583)
            coordinates.append(2.300077)
        }else if (location == "Berlin"){
            coordinates.append(52.527371)
            coordinates.append(13.351507)
        }
        else{
            coordinates.append(51.498005)
            coordinates.append(-0.045157)
        }
        return coordinates
    }
    
    func getFoodComments(location: String) -> String{
        if (location == "Istanbul"){
            return  "Strongly suggested to have a Turkish breakfast on the coastline of the Bosphorus in the areas like Bebek, Rumelihisarı. The establishments are in a mighty competition which plays in the cards of the customers. You simply can’t go wrong in the area."
            
        }else if (location == "Vienna"){
            return "Where to eat traditional Austrian food in Vienna – the best schnitzel, strudel, schnapps, and snacks version!"
            
        }else if (location == "London"){
            return "There’s nothing that says ‘British Food’ like Fish & Chips. Known the world over, this traditional British dish is on the top of any foodie list for visitors to London and the U.K."
        }else if (location == "Berlin"){
            return "Mmm pretzels! Known as breze or brezel in German, these treats are uniquitous throughout the country. This is no exception in the city – you will easily find pretzels being sold at numerous street food vendors, bakeries and cafes lining the streets."
        }else if (location == "Amsterdam"){
            return "So you went out for a few drinks. You forgot to eat dinner. Those 8% Belgian beers are beginning to take their toll. What to do? The answer is in the bitterballen. Delicious, deep fried crispy meatballs traditionally served with mustard for dipping – they’re the ultimate in Dutch pub snacks "
        }else{
            return "Go ahead and give yourself a pass on this trip. Have that chocolate croissant for breakfast. Once you take your first bite, you won’t regret it! Any boulangerie or patisserie in town will have “pain au chocolat,” especially in the morning. Try to get there right at opening to get them as fresh as possible, that’s when they’re the best!"
        }
    }
}
