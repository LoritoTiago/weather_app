//
//  MockData.swift
//  weather
//
//  Created by Lorito Mbuta on 07/05/2024.
//

import Foundation


struct MockData {
    
    static let sampleData: Weather =  Weather(name: "TUE", imageName: "cloud.sun.fill", temperature:74)
    
    
   static let weathers: [Weather] = [
        Weather(name: "TUE", imageName: "cloud.sun.fill", temperature:74),
        Weather(name: "WED", imageName: "cloud.sun.fill", temperature:88),
        Weather(name: "THU", imageName: "sun.max.fill", temperature:55),
        Weather(name: "FRI", imageName: "sunset.fill", temperature:25),
        Weather(name: "SAT", imageName: "snow", temperature:23)
    ]
}


