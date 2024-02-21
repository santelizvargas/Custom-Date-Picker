//
//  DateFormatter.swift
//  CustomDatePicker
//
//  Created by Steven Santeliz on 20/2/24.
//

import Foundation

// MARK: - Convert from Date To String Hour

func fromDateToStringHour(date: Date = Date()) -> String {
    let formatter = DateFormatter()
    formatter.dateFormat = "hh : mm a"
    return formatter.string(from: date)
}
