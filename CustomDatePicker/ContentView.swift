//
//  ContentView.swift
//  CustomDatePicker
//
//  Created by Steven Santeliz on 4/1/24.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTime: String = fromDateToStringHour()
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "clock")
                Text("Time: \(selectedTime)")
            }
            
            CustomHourPicker(selectedTime: $selectedTime)
        }
    }
}

#Preview {
    ContentView()
}
