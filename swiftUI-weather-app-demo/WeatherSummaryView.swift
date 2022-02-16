//
//  WeatherSummaryView.swift
//  swiftUI-weather-app-demo
//
//  Created by Wataru Maeda on 2022/01/05.
//

import SwiftUI

struct WeatherSummaryView: View {
  @State private var selectedIndex = 0
  private let items = ["Day", "Week", "Month"]

  init() {
    UISegmentedControl.appearance().selectedSegmentTintColor = #colorLiteral(red: 0.9449525476, green: 0.2824411094, blue: 0.4755416512, alpha: 1)
    UISegmentedControl.appearance().setTitleTextAttributes([.font: UIFont(name: "pilgi", size: 24)!, .foregroundColor: UIColor.white], for: .selected)
    UISegmentedControl.appearance().setTitleTextAttributes([.font: UIFont(name: "pilgi", size: 24)!, .foregroundColor: #colorLiteral(red: 0.9956122041, green: 0.299066782, blue: 0.5072486997, alpha: 1)], for: .normal)
  }

  var body: some View {
    VStack(alignment: .leading) {
      Picker(selection: $selectedIndex, label: Text("")) {
        ForEach(0..<items.count) {
          Text(items[$0]).font(.title).tag($0)
        }
      }
      .pickerStyle(SegmentedPickerStyle())
    }
    .frame(maxWidth: .infinity)
    .background(.white)
  }
}

struct WeatherSummaryView_Previews: PreviewProvider {
  static var previews: some View {
    WeatherSummaryView()
  }
}
