//
//  WeekView.swift
//  MyCalendar
//
//  Created by 裴良洙 on 2021/03/15.
//

import SwiftUI

struct WeekView: View {
    
    var weekWidth = MonthView().monthWidth
    
    let weekString:[String] = [
        "Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"
    ]
    
    var body: some View {
        HStack() {
            ForEach(0..<weekString.count, id: \.self) { day in
                Text(weekString[day])
                
                    
            }
            .padding(.horizontal, 0)
            
        }
        
        .frame(width: weekWidth)
        
        
    }
    
}

struct WeekView_Previews: PreviewProvider {
    static var previews: some View {
        WeekView()
    }
}
