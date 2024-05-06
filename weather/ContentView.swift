//
//  ContentView.swift
//  weather
//
//  Created by Lorito Mbuta on 03/05/2024.
//

import SwiftUI

struct ContentView: View {
    
    // we use state to create variable that state can be change
    @State private var isNight=false
    
    var body: some View {
        ZStack{
            BackgroundView(isNight: $isNight)
            
            
            VStack{
                CityTextView(cityName: "Maianga, Luanda")
                
                
                MainWeatherStatusView(imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill", temperature: 74)
           
              
                HStack(spacing:20){
                    WeatherDayView(dayOfWeek: "TUE", imageName: "cloud.sun.fill", temperature: 74)
                    WeatherDayView(dayOfWeek: "WED", imageName: "sun.max.fill", temperature: 88)
                    WeatherDayView(dayOfWeek: "THU", imageName: "wind.snow", temperature: 55)
                    WeatherDayView(dayOfWeek: "FRI", imageName: "sunset.fill", temperature: 25)
                    WeatherDayView(dayOfWeek: "SAT", imageName: "snow", temperature: 2)
                   
                }
                Spacer()
                
                
                Button{
                    
                    isNight.toggle()
                }label: {
                    WeatherButton(title: "Change Day Time", textColor: .white, backgorundColor: .mint)
                }
                Spacer()
            }
            
        }
    }
}

#Preview {
    ContentView()
}

struct WeatherDayView: View {
    
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
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
        
    }
}

struct BackgroundView: View {
  
   @Binding var isNight: Bool
    
    var body: some View {
      
        
        //We use this when we want to have more customized gradle
        //LinearGradient(gradient: Gradient(colors: [isNight ? .black : .blue,isNight ? .gray: Color("lightBlue")]), startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea(.all)
        
        
        
        ContainerRelativeShape().fill(isNight ?  Color.black.gradient:Color.blue.gradient).ignoresSafeArea()
    }
}


struct CityTextView: View{
    var cityName:String
    var body: some View{
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default)).foregroundColor(.white).padding()
    }
}

struct MainWeatherStatusView: View{
    var imageName:String
    var temperature: Int
    var body: some View{
        VStack(spacing: 10){
            Image(systemName: imageName).renderingMode(.original).resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180,height: 180)
            
            Text("\(temperature)º").font(.system(size: 70, weight: .medium)).foregroundColor(.white)
        }.padding(.bottom,40)
    }
}


