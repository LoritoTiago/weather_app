//
//  WeatherViewModel.swift
//  weather
//
//  Created by Lorito Mbuta on 07/05/2024.
//

import Foundation
import SwiftUI

final class WeatherViewModel: ObservableObject{
    
    
    init(selectedWeather: Weather) {
        self.selectedWeather = selectedWeather
    }
    
  @Published  var selectedWeather: Weather = MockData.sampleData
    
    
}
