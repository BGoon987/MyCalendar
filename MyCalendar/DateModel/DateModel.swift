//
//  DateModel.swift
//  MyCalendar
//
//  Created by 裴良洙 on 2021/03/13.
//

import Foundation
import SwiftUI

public class DateHelper {
    public class func date(year: Int, month: Int, day: Int, hour: Int = 0, minute: Int = 0, seconds: Int = 0) -> Date? {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        return formatter.date(from: "\(year)-\(month)-\(day) \(hour):\(minute):\(seconds)")
    }
    
    public class func dateAfter(month: Int, from baseDate: Date) -> Date? {
        let monthToAdd = month
        var dateComponents = DateComponents()
        dateComponents.month = monthToAdd
        return Calendar.current.date(byAdding: .month, value: monthToAdd ,to: baseDate)
    }
    
}
