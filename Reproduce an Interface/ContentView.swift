//
//  ContentView.swift
//  Reproduce an Interface
//
//  Created by Benjamin Lavallee on 2023-11-08.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            ZStack {
                Color.black
                    .ignoresSafeArea()
                NavigationStack {
                VStack {
                    Text("Weather")
                        .foregroundStyle(Color(.black))
                        
                    List {
                        Weatheriew(tempPic: "raincloud", location: "My Location", timeAtLocation: "Lakefield", expectedForecast: "Expect flurries in the next hour", currentTemp: "1°", highTemp: "H:11°", lowTemp: "L:1°")
                        Weatheriew(tempPic: "raincloud", location: "Toronto", timeAtLocation: "6:08 AM", expectedForecast: "Expect light rain in the next hour", currentTemp: "7°", highTemp: "H:12°", lowTemp: "L:7°")
                        Weatheriew(tempPic: "raincloud", location: "Hamilton", timeAtLocation: "6:08 AM", expectedForecast: "Expect light rain in the next hour", currentTemp: "6°", highTemp: "H:13°", lowTemp: "L:5°")
                        Weatheriew(tempPic: "raincloud", location: "Kitchener", timeAtLocation: "6:08 AM", expectedForecast: "Light rain for the next hour", currentTemp: "5°", highTemp: "H:12°", lowTemp: "L:5°")
                        Weatheriew(tempPic: "raincloud", location: "Smith-Ennismore-Lakefield", timeAtLocation: "6:08 AM", expectedForecast: "Expect flurries in the next hour", currentTemp: "1°", highTemp: "H:11°", lowTemp: "L:1°")
                    }
                    .listRowSpacing(12)
                    .background(Color.black)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
