//
//  CalendarModel.swift
//  MyCalendar
//
//  Created by 裴良洙 on 2021/03/12.
//

import Foundation
import SwiftUI

struct CalendarModel {
    let day: Date
    let isSelected: Bool
    let customColor: Color
    
    init(day: Date, isSelected: Bool, customColor: Color) {
        self.day = day
        self.isSelected = isSelected
        self.customColor = customColor
    }
    
}
