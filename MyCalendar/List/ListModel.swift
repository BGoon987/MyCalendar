//
//  ListModel.swift
//  MyCalendar
//
//  Created by 裴良洙 on 2021/04/14.
//

import Foundation

struct ListModel: Identifiable {
    
    var id = UUID()
    
    var time: String
    var title: String
    var month: Int
    var day: Int
    var dayOfWeekday: String
    
    init(time: String, title: String, month: Int, day: Int, dayOfWeekday: String) {
        self.time = time
        self.title = title
        self.month = month
        self.day = day
        self.dayOfWeekday = dayOfWeekday
    }
}
