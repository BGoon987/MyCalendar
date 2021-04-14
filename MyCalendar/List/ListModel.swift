//
//  ListModel.swift
//  MyCalendar
//
//  Created by 裴良洙 on 2021/04/14.
//

import Foundation

class ListModel: Identifiable {
    
    var id = UUID()
    
    var time: String
    var title: String
    var isClear : Bool
    
    init(time: String, title: String, isClear: Bool) {
        self.time = time
        self.title = title
        self.isClear = isClear
    }
    
    
}
