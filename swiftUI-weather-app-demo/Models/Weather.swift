//
//  WeatherModel.swift
//  swiftUI-weather-app-demo
//
//  Created by Wataru Maeda on 2022/04/15.
//

import Foundation
import SwiftUI

struct Weather: Hashable, Codable, Identifiable {
  var id: Int
  var timeFrame: TimeFrame
  enum TimeFrame: String, Codable {
    case morning = "Morning"
    case afternoon = "Afternoon"
    case evening = "Evening"
    case overnight = "Overninght"
  }

  private var weatherType: WeatherType
  var weatherImage: Image? {
    switch weatherType {
      case .sunny:
        return Image("sun")
      case .rainy:
        return Image("sun")
      case .cloudy:
        return Image("sun")
      case .snowy:
        return Image("sun")
    }
  }
  private enum WeatherType: String, Codable {
    case sunny = "Sunny"
    case rainy = "Rainy"
    case cloudy = "Cloudy"
    case snowy = "Snowy"
  }

  var tempature: Float
  var humidity: Int
}
