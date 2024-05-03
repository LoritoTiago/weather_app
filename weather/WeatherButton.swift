//
//  WeatherButton.swift
//  weather
//
//  Created by Lorito Mbuta on 03/05/2024.
//

import SwiftUI

struct WeatherButton: View {
    
    var title: String
    var textColor: Color
    var backgorundColor: Color
    var body: some View {
        Text(title)
            .frame(width: 200,height: 50)
            .foregroundColor(textColor)
            .background(backgorundColor.gradient)
            .font(.system(size: 20, weight: .bold, design: .default))
            .cornerRadius(10.0)
    }
}


struct WeatherButton_Preview: PreviewProvider{
    static var previews: some View{
        WeatherButton(title: "Test title", textColor: .white, backgorundColor: .blue)
    }
}
