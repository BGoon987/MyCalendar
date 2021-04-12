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
    
    @State private var isPresented = false
    @State private var haveIndex = false
    
    var body: some View {
        CalendarView(interval: year) { date in
            Text("30")
                .hidden()
                .padding(8)
                .background(Color.orange)
                .clipShape(Circle())
                
                .alert(isPresented: $isPresented, content: {
                    // Add View
                    Alert(title: Text("Test"))
                })
                .padding(.vertical, 4)
                .overlay(
                    Text(String(self.calendar.component(.day, from: date)))
                )
                .onTapGesture {
                    isPresented.toggle()
                }
            
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
