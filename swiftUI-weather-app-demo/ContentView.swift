//
//  ContentView.swift
//  swiftUI-weather-app-demo
//
//  Created by Wataru Maeda on 2021/12/23.
//

import SwiftUI

struct ContentView: View {
  init() {
    UINavigationBar.appearance().titleTextAttributes = [.font: UIFont(name: "pilgi", size: 24)!, .foregroundColor: #colorLiteral(red: 0.9449525476, green: 0.2824411094, blue: 0.4755416512, alpha: 1)]
  }

  var body: some View {
    NavigationView {
      ZStack {
        LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.9449525476, green: 0.2824410498, blue: 0.4755416512, alpha: 1)), Color(#colorLiteral(red: 0.7886763215, green: 0.1523601711, blue: 0.6740109324, alpha: 1))]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.bottom)

        WeatherSummaryView()
      }

        .navigationBarTitle(Text("Weather App"), displayMode: .inline)
        .navigationBarTitleDisplayMode(.inline)
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
