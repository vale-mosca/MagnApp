//
//  Utils.swift
//  Magn
//
//  Created by Valerio Mosca on 24/10/22.
//

import Foundation
import SwiftUI

struct SearchBar: View {
    
    @Binding var searchText: String
    @Binding var searching: Bool
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(Color.gray)
                .brightness(0.4)
            HStack {
                Image(systemName: "magnifyingglass")
                TextField("Search...", text: $searchText) { startedEditing in
                    if startedEditing {
                        withAnimation {
                            searching = true
                        }
                    }
                } onCommit: {
                    withAnimation {
                        searching = false
                    }
                }
            }
            .foregroundColor(.gray)
            .padding(.leading, 13)
        }
        .frame(height: 40)
        .cornerRadius(13)
        .padding()
    }
}

struct ProgressBar: View {
    @State private var fahrenheit = 50.0

    private let minValue = 0.0
    private let maxValue = 100.0

        let gradient = Gradient(colors: [.blue, .green, .pink])

        var body: some View {
            VStack {
                Gauge(value: fahrenheit, in: minValue...maxValue) {
                    Label("Temperature (°F)", systemImage: "thermometer.medium")
                } currentValueLabel: {
                    Text(Int(fahrenheit), format: .number)
                        .foregroundColor(.green)

                } minimumValueLabel: {
                    Text("0")
                        .foregroundColor(.blue)

                } maximumValueLabel: {
                    Text("100")
                        .foregroundColor(.pink)

                }
                .tint(gradient)

                //Slider(value: $fahrenheit, in: minValue...maxValue)
            }
            .gaugeStyle(.accessoryCircular)
            .padding()
        }
    }
