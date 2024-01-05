//
//  CustomHourPicker.swift
//  CustomDatePicker
//
//  Created by Steven Santeliz on 4/1/24.
//

import SwiftUI

struct CustomHourPicker: View {
    
    @Binding private var selectedTime: String
    @State private var selectedHour: Int = 0
    @State private var selectedMinutes: Int = 0
    @State private var selectedMeridiem: Int = 0
    
    private let hours: [String] = (1...12).map { String(format: "%02d", $0) }
    private let minutes: [String] = (0...59).map { String(format: "%02d", $0) }
    private let meridiems: [String] = ["AM", "PM"]
    
    init(selectedTime: Binding<String>) {
        _selectedTime = selectedTime
    }
    
    var body: some View {
        HStack {
            pickerItem(array: hours, selected: $selectedHour)
            Text(":")
                .font(.headline)
                .bold()
                .foregroundStyle(.yellow)
            pickerItem(array: minutes, selected: $selectedMinutes)
            pickerItem(array: meridiems, selected: $selectedMeridiem)
        }
        .padding(.horizontal, 20)
        .background(Color.black)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .onChange(of: [selectedHour, selectedMinutes, selectedMeridiem]) { _ in
            withAnimation {
                selectedTime = "\(hours[selectedHour]) : \(minutes[selectedMinutes]) \(meridiems[selectedMeridiem])"
            }
        }
        .onAppear { setInitialValue() }
    }
    
    private func pickerItem(array: [String], selected: Binding<Int>) -> some View {
        Picker("", selection: selected) {
            ForEach(array.indices, id: \.self) { index in
                Text(array[index])
                    .font(.headline.bold())
                    .foregroundStyle(index == selected.wrappedValue ? .yellow : .gray)
            }
        }
        .pickerStyle(.wheel)
        .frame(width: 60)
    }
    
    private func setInitialValue() {
        let items = selectedTime.components(separatedBy: " : ")
        
        if let hourItem = items.first,
           let hourIndex = hours.firstIndex(of: hourItem) {
            selectedHour = hourIndex
        }
        
        guard items.count >= 2 else { return }
        let minuteAndMeridiemItems = items[1].components(separatedBy: " ")
        
        if let minuteItem = minuteAndMeridiemItems.first,
            let minuteIndex = minutes.firstIndex(of: minuteItem) {
            selectedMinutes = minuteIndex
        }
        
        if minuteAndMeridiemItems.count == 2,
           let meridiemItem = minuteAndMeridiemItems.last,
           let meridiemIndex = meridiems.firstIndex(of: meridiemItem) {
            selectedMeridiem = meridiemIndex
        }
    }
}
