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
                VStack (spacing: 2) {
                    HStack {
                        Text("Weather")
                            .font(.system(size: 35))
                            .bold()
                            .padding(.leading, 20)
                            .foregroundStyle(Color(.black))
                        Spacer()
                    }
                    List {
                        Weatheriew(tempPic: "raincloud", location: "My Location", timeAtLocation: "Lakefield", expectedForecast: "Expect flurries in the next hour", currentTemp: "1°", highTemp: "H:11°", lowTemp: "L:1°")
                        Weatheriew(tempPic: "raincloud", location: "Toronto", timeAtLocation: "6:08 AM", expectedForecast: "Expect light rain in the next hour", currentTemp: "7°", highTemp: "H:12°", lowTemp: "L:7°")
                        Weatheriew(tempPic: "raincloud", location: "Hamilton", timeAtLocation: "6:08 AM", expectedForecast: "Expect light rain in the next hour", currentTemp: "6°", highTemp: "H:13°", lowTemp: "L:5°")
                        Weatheriew(tempPic: "raincloud", location: "Kitchener", timeAtLocation: "6:08 AM", expectedForecast: "Light rain for the next hour", currentTemp: "5°", highTemp: "H:12°", lowTemp: "L:5°")
                        Weatheriew(tempPic: "raincloud", location: "Smith-Ennismore-Lakefield", timeAtLocation: "6:08 AM", expectedForecast: "Expect flurries in the next hour", currentTemp: "1°", highTemp: "H:11°", lowTemp: "L:1°")
                    }
                    .listStyle(.automatic)
                    .listRowSpacing(12)
                    .background(Color.black)
                    .toolbar {
                        ToolbarItem(placement: .topBarTrailing) {
                            VStack {
                                Spacer(minLength: 10)
                                Button(action: {}) {
                                    Image(systemName: "ellipsis.circle")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 25)
                                        .foregroundStyle(Color.black)
                                }
                            }
                        }
                    }
                }
                
            }
            
        }
        .font(.title)
    }
}

#Preview {
    ContentView()
}
