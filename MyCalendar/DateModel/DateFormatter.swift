//
//  DateFormatter.swift
//  MyCalendar
//
//  Created by 裴良洙 on 2021/03/31.
//

import Foundation

extension DateFormatter {
    static var year: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy"
        return formatter
    }
    
    static var month: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "MM"
        return formatter
    }
}

extension Calendar {
    func generateDates(
        inside interval: DateInterval,
        matching components: DateComponents) -> [Date] {
        var dates: [Date] = []
        dates.append(interval.start)
        
        enumerateDates(startingAfter: interval.start,
                       matching: components,
                       matchingPolicy: .nextTime) { date, _, stop in
            if let date = date {
                if date < interval.end {
                    dates.append(date)
                } else {
                    stop = true
                }
            }
            
        }
        return dates
    }
}

extension Date {
    public var year: Int {
        return Calendar.current.component(.year, from: self)
    }
    public var month: Int {
        return Calendar.current.component(.month, from: self)
    }
    public var day: Int {
        return Calendar.current.component(.day, from: self)
    }
    public var hour: Int {
        return Calendar.current.component(.hour, from: self)
    }
    public var minute: Int {
        return Calendar.current.component(.minute, from: self)
    }
    
    public var monthName: String {
        let nameFormatter = DateFormatter()
        nameFormatter.dateFormat = "MMMM"
        return nameFormatter.string(from: self)
    }
    public var dayofWeekday: String {
        let nameFormatter = DateFormatter()
        nameFormatter.dateFormat = "eee"
        return nameFormatter.string(from: self)
    }
    public var monthNumber: String {
        let numberFormatter = DateFormatter()
        numberFormatter.dateFormat = "MM"
        return numberFormatter.string(from: self)
    }
}


