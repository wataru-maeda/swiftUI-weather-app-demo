//
//  WeatherTableViewCell.swift
//  swiftUI-weather-app-demo
//
//  Created by Wataru Maeda on 2022/04/17.
//

import SwiftUI

struct WeatherTableViewCell: View {
  var data: Weather

  var body: some View {
    VStack(alignment: .leading) {
      Text(data.timeFrame.rawValue)
        .font(Font.custom("pilgi", size: 24))
      HStack {
        HStack {
          data.weatherImage?.resizable().scaledToFit().frame(width: 40, height: 40)
          Text(String(format: "%.1f", data.tempature))
            .font(.system(size: 24))
            .bold()
            .foregroundColor(.orange)
          Text("℃").font(.system(size: 14))
            .bold()
            .foregroundColor(.yellow)
        }

        HStack {
          Image("humidity")
            .resizable()
            .scaledToFit()
            .frame(width: 30, height: 30)
          Text("\(data.humidity)")
            .font(.system(size: 24))
            .bold()
            .foregroundColor(.blue)
          Text("%").font(.system(size: 14))
            .bold()
            .foregroundColor(.cyan)
        }

      }
    }
  }
}

struct WeatherTableViewCell_Previews: PreviewProvider {
  static var previews: some View {
    let data: [Weather] = load("weather.json")
    WeatherTableViewCell(data: data[0])
  }
}
