//
//  WeatherView.swift
//  Reproduce an Interface
//
//  Created by Benjamin Lavallee on 2023-11-08.
//

import SwiftUI
struct Weatheriew: View {
    
    //MARK: Stored properties
    let tempPic: String
    let location: String
    let timeAtLocation: String
    let expectedForecast: String
    let currentTemp: String
    let highTemp: String
    let lowTemp: String
    
    //MARK: Computed properties
    
    // Returns the button's user interface...
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25.0)
                .overlay{
                    Image(tempPic)
                        .cornerRadius(25.0)
                }
            HStack {
                VStack (alignment: .leading) {
                    Text(location)
                        .foregroundStyle(Color.white)
                        .font(.system(size: 25))
                        .bold()
                    Text(timeAtLocation)
                        .foregroundStyle(Color.white)
                        .font(.system(size: 15))
                        .bold()
                    Spacer()
                    Text(expectedForecast)
                        .foregroundStyle(Color.white)
                        .font(.system(size: 15))
                        .bold()
                }
                Spacer()
                VStack (alignment: .trailing) {
                    Text(currentTemp)
                        .foregroundStyle(Color.white)
                        .font(.system(size: 50))
                    Spacer()
                    Text(highTemp)
                        .foregroundStyle(Color.white)
                        .font(.system(size: 15))
                        .bold()
                    Text(lowTemp)
                        .foregroundStyle(Color.white)
                        .font(.system(size: 15))
                        .bold()
                    
                }
            }
            
        }
        
        
    }
}

#Preview {
    Weatheriew(tempPic: "raincloud", location: "My Location", timeAtLocation: "Lakefield", expectedForecast: "Expect flurries in the next hour", currentTemp: "1°", highTemp: "H:11°", lowTemp: "L:1°")
}
