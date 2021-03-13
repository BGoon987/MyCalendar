//
//  DateModel.swift
//  MyCalendar
//
//  Created by 裴良洙 on 2021/03/13.
//

import Foundation

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
    
    public var monthName: String {
        let nameFormatter = DateFormatter()
        nameFormatter.dateFormat = "MMMM"
        return nameFormatter.string(from: self)
    }
}
