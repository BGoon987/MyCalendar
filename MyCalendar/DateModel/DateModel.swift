//
//  DateModel.swift
//  MyCalendar
//
//  Created by 裴良洙 on 2021/03/13.
//

import Foundation
import SwiftUI

struct DateModel {
    
    
    @State var selectedDate = Date()
    var dateComponents = DateComponents()
    let monthToAdd = 1
    let dayToAdd = 1
    let yearToAdd = 1
    
    
    var monthStyle: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy MM"
        return formatter.string(from: selectedDate)
    }
    
    mutating func nextMonth() -> Date {
        dateComponents.month = monthToAdd
        return Calendar.current.date(byAdding: dateComponents, to: selectedDate)!
    }
    
}


