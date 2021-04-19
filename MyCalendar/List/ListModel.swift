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
    var isClear : Bool
    var month: Int
    var day: Int
    
    init(time: String, title: String, isClear: Bool, month: Int, day: Int) {
        self.time = time
        self.title = title
        self.isClear = isClear
        self.month = month
        self.day = day
    }
}
