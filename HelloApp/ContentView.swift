//
//  ContentView.swift
//  HelloApp
//
//  Created by MAKS on 06.09.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(
                colors: [.blue, Color("LightBlue")]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack{
                Text("Lodz, Poland")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
                VStack(spacing: 8) {
                    Image(systemName: "sunset.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    Text("54°")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundColor(.white)
                }.padding(.bottom, 50)
                HStack(spacing: 15){
                    WeatherDayView(
                        dayofWeek: "TUE",
                        imageName: "cloud.sun.fill",
                        temprature: 56)
                    WeatherDayView(
                        dayofWeek: "WED",
                        imageName: "sun.max.fill",
                        temprature: 66)
                    WeatherDayView(
                        dayofWeek: "THU",
                        imageName: "wind.snow",
                        temprature: 43)
                    WeatherDayView(
                        dayofWeek: "FRI",
                        imageName: "snow",
                        temprature: 20)
                    WeatherDayView(
                        dayofWeek: "SAT",
                        imageName: "snow",
                        temprature: 14)
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WeatherDayView: View {
    
    var dayofWeek: String
    var imageName: String
    var temprature: Int
    
    var body: some View {
        VStack{
            Text(dayofWeek)
                .font(.system(size: 15, weight: .medium, design: .default))
                .foregroundColor(.white)
                .padding(5)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
                .padding(5)
            Text("\(temprature)°")
                .font(.system(size: 19, weight: .bold, design: .default))
                .foregroundColor(.white)
                .padding(5)
        }
    }
}
