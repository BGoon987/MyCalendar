//
//  CalendarView.swift
//  MyCalendar
//
//  Created by 裴良洙 on 2021/03/31.
//

import SwiftUI

struct CalendarView<DateView>: View where DateView: View {
    @Environment(\.calendar) var calendar
    
    let interval: DateInterval
    let content: (Date) -> DateView
    
    
    
    init(interval: DateInterval, @ViewBuilder content: @escaping (Date) -> DateView) {
        self.interval = interval
        self.content = content
    }
    
    private var months: [Date] {
        calendar.generateDates(inside: interval, matching: DateComponents(day: 1, hour: 0, minute: 0, second: 0))
    }
    
    var screenSize = CGSize(width: UIScreen.main.bounds.width,
                            height: UIScreen.main.bounds.height)
    var monthViewSize = CGSize(width: UIScreen.main.bounds.width * 0.9
                               , height: UIScreen.main.bounds.height * 0.6)
    var startPadding: CGFloat = 0
    
    var leadPadding: CGFloat {
        screenSize.width / 2 - monthViewSize.width / 2
    }
    
    var trailPadding: CGFloat {
        screenSize.width - monthViewSize.width - leadPadding
    }
    
    @State var addPadding: CGFloat = 0
    
    
    
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    self.addPadding -= leadPadding + monthViewSize.width
                }, label: {
                    Image(systemName: "arrow.backward")
                })
//                Spacer()
//                Button(action: {
//                    if leadPadding == trailPadding {
//                        print("lead = trail")
//                    } else {
//                        print("lead /= trail")
//                    }
//
//                }, label: {
//                    Text("Test")
//                })
                Spacer()
                Button(action: {
                    self.addPadding += leadPadding + monthViewSize.width
                }, label: {
                    Image(systemName: "arrow.right")
                })
            }
            .frame(width: self.monthViewSize.width * 0.9)
            GeometryReader { index in
                HStack(spacing: leadPadding) {
                    ForEach(months, id: \.self) { month in
                        MonthView(month: month, content: self.content)
                            
                    }
                    .frame(width: monthViewSize.width, height: monthViewSize.height, alignment: .top)
                    
                    
                }
                .padding(.leading, leadPadding - addPadding)
                .animation(.default)
                
                
            }
        }
        
    }
}
