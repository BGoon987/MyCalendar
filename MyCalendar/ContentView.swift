//
//  ContentView.swift
//  MyCalendar
//
//  Created by 裴良洙 on 2021/03/12.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.calendar) var calendar
    
    
    private var year: DateInterval {
        calendar.dateInterval(of: .year, for: Date())!
    }
    
    @State var selectedMonth: String = ""
    @State var selectedDay: String = ""
    @State var selectedDayOfWeekday: String = ""
    
    
    var body: some View {
        NavigationView {
            CalendarView(interval: year) { date in
                NavigationLink(
                    destination: ListView(selectedMonth: $selectedMonth,
                                          selectedDay: $selectedDay,
                                          selectedDayOfWeekday:$selectedDayOfWeekday)
                        .onAppear(perform: {
                            
                            self.selectedMonth = String(self.calendar.component(.month, from: date))
                            self.selectedDay = String(self.calendar.component(.day, from: date))
                            self.selectedDayOfWeekday = String(self.calendar.component(.weekday, from: date))
                            
                            // Test Print
                            print(selectedMonth)
                            print(selectedDay)
                            print(selectedDayOfWeekday)
                            
                        }),
                    label: {
                        Text("30")
                            .hidden()
                            .padding(8)
                            .background(Color.orange)
                            .clipShape(Circle())
                            .padding(.vertical, 4)
                            .overlay(
                                Text(String(self.calendar.component(.day, from: date)))
                            )               
                    })
                    .navigationBarHidden(true)
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
