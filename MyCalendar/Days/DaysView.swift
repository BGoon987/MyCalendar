//
//  DaysView.swift
//  MyCalendar
//
//  Created by 裴良洙 on 2021/03/15.
//

import SwiftUI

struct DaysView: View {
    
    
    var dayString:[String] = [
        "Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"
    ]
    var daysWidth = MonthView().monthWidth
    var dayName = Date().dayName
    
    var body: some View {
        VStack {
            
            HStack {
                    ForEach(0..<dayString.count) { day in
                        Text(dayString[day])
                            
                    }
                    .frame(width: daysWidth / 8, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                }
                .frame(width: daysWidth)
            
            GeometryReader { geometry in
                ForEach(0..<5) { _ in
                    HStack {
                        ForEach(0..<7) { _ in
                            DayButton()
                                .aspectRatio(1, contentMode: .fit)
                        }
                    }
                }.frame(width: self.daysWidth / 7, height: self.daysWidth / 7)
            }
            
            
        }
        .frame(width: daysWidth)
        
        
    }
}


struct DaysView_Previews: PreviewProvider {
    static var previews: some View {
        DaysView()
    }
}
