//
//  MonthView.swift
//  MyCalendar
//
//  Created by 裴良洙 on 2021/03/31.
//

import SwiftUI

struct MonthView<DateView>: View where DateView: View {
    @Environment(\.calendar) var calendar
    
    let month: Date
    let content: (Date) -> DateView
    
    init(month: Date, @ViewBuilder content: @escaping (Date) -> DateView) {
        self.month = month
        self.content = content
    }
    
    private var weeks: [Date] {
        guard
            let monthInterval = calendar.dateInterval(of: .month, for: month)
        else { return [] }
        return calendar.generateDates(inside: monthInterval, matching: DateComponents(hour: 0, minute: 0, second: 0, weekday: calendar.firstWeekday))
    }
    
    private var yearHeader: some View {
        _ = calendar.component(.month, from: month)
        let formatter = DateFormatter.year
        return Text(formatter.string(from: month))
            .font(.title)
            .padding()
    }
    private var monthHeader: some View {
        _ = calendar.component(.month, from: month)
        let formatter = DateFormatter.month
        return Text(formatter.string(from: month))
            .font(.title)
            .padding()
    }
    
    
    
    
    var body: some View {
        VStack {
            HStack(alignment: .bottom) {
                yearHeader
                monthHeader
            }
            
            ForEach(weeks, id: \.self) { week in
                WeekView(week: week, content : self.content)
            }
        }
    }
}

