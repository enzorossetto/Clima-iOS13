//
//  WeatherModel.swift
//  Clima
//
//  Created by Enzo Rossetto on 24/01/24.
//  Copyright © 2024 App Brewery. All rights reserved.
//

import Foundation

struct WeatherModel {
    let conditionId: Int
    let cityName: String
    let temperature: Double
    
    var temperatureString: String {
        String(format: "%.1f", temperature)
    }
    
    var conditionName: String {
        switch conditionId {
        case 200...232:
            "cloud.bolt"
        case 300...321:
            "cloud.drizzle"
        case 500...531:
            "cloud.rain"
        case 600...622:
            "cloud.snow"
        case 701...781:
            "cloud.fog"
        case 800:
            "sun.max"
        case 801...804:
            "cloud.bolt"
        default:
            "cloud"
        }
    }
}
