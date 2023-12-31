//
//  ContentView.swift
//  Reproduce an Interface
//
//  Created by Benjamin Lavallee on 2023-11-08.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationStack {
            ZStack {
                Color.black
                    .ignoresSafeArea()
                VStack (spacing: 2) {
                    List {
                        Group {
                            
                            Weatheriew(tempPic: "raincloud", location: "My Location", timeAtLocation: "Lakefield", expectedForecast: "Expect flurries in the next hour", currentTemp: "1°", highTemp: "H:11°", lowTemp: "L:1°")
                            Weatheriew(tempPic: "raincloud", location: "Toronto", timeAtLocation: "6:08 AM", expectedForecast: "Expect light rain in the next hour", currentTemp: "7°", highTemp: "H:12°", lowTemp: "L:7°")
                            Weatheriew(tempPic: "raincloud", location: "Hamilton", timeAtLocation: "6:08 AM", expectedForecast: "Expect light rain in the next hour", currentTemp: "6°", highTemp: "H:13°", lowTemp: "L:5°")
                            Weatheriew(tempPic: "raincloud", location: "Kitchener", timeAtLocation: "6:08 AM", expectedForecast: "Light rain for the next hour", currentTemp: "5°", highTemp: "H:12°", lowTemp: "L:5°")
                            Weatheriew(tempPic: "raincloud", location: "Smith-Ennismore-Lakefield", timeAtLocation: "6:08 AM", expectedForecast: "Expect flurries in the next hour", currentTemp: "1°", highTemp: "H:11°", lowTemp: "L:1°")
                        }
                        
                    }
                    .searchable(text: .constant(""), prompt: "Search for any city or airport")
                    .listStyle(.automatic)
                    .listRowSpacing(12)
                    .background(Color.black)
                    .scrollContentBackground(.hidden)
                    .toolbar {
                        ToolbarItem(placement: .topBarTrailing) {
                            VStack {
                                Spacer(minLength: 10)
                                Button(action: {}) {
                                    Image(systemName: "ellipsis.circle")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 25)
                                        .foregroundStyle(Color.white)
                                }
                            }
                        }
                    }
                }
                
            }
            .navigationTitle("Weather")
        }
    }
}

#Preview {
    ContentView()
        .preferredColorScheme(.dark)
}
