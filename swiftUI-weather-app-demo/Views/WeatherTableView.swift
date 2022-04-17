//
//  WeatherTableView.swift
//  swiftUI-weather-app-demo
//
//  Created by Wataru Maeda on 2022/04/15.
//

import SwiftUI

struct WeatherTableView: View {
  var data: [Weather]

  init(data: [Weather]) {
    self.data = data
    UITableView.appearance().backgroundColor = .clear
            UITableViewCell.appearance().backgroundColor = .clear
  }

  var body: some View {
    List {
      ForEach(data) { weather in
        WeatherTableViewCell(data: weather)
      }
    }
  }
}

struct WeatherTableView_Previews: PreviewProvider {
    static var previews: some View {
      let data: [Weather] = load("weather.json")
      WeatherTableView(data: data)
    }
}
