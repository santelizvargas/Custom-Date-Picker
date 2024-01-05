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

func fromDateToStringHour(date: Date = Date()) -> String {
    let formatter = DateFormatter()
    formatter.dateFormat = "hh : mm a"
    return formatter.string(from: date)
}

#Preview {
    ContentView()
}
