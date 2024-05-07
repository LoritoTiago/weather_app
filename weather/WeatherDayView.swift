//
//  WeatherDayView.swift
//  weather
//
//  Created by Lorito Mbuta on 07/05/2024.
//

import SwiftUI

struct WeatherDayView: View {
    
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
     var isSelected: Bool
    var body: some View {
      
            VStack{
                Text(dayOfWeek).font(.system(size: 16, weight: .medium, design: .default)).foregroundColor(.white)
                
                
                
                Image(systemName: imageName)
                    .symbolRenderingMode(.multicolor)
                    .resizable()
                    //.foregroundColor(.pink)
                    //.foregroundStyle(.white, .yellow)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 60, height: 60)
                Text("\(temperature)º").font(.system(size: 28, weight: .medium, design: .default)).foregroundColor(.white)
            }
           
            .padding()
            .background(.blue.gradient)
            .border(.green, width:isSelected==true ? 3 : 0)
            .cornerRadius(5.0)
        
    }
}

#Preview {
    WeatherDayView(dayOfWeek: "FRI", imageName: "cloud.sun.fill", temperature: 70,isSelected: true)
}


