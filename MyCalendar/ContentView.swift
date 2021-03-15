//
//  ContentView.swift
//  MyCalendar
//
//  Created by 裴良洙 on 2021/03/12.
//

import SwiftUI

struct ContentView: View {
    
    private var calendar = Calendar(identifier: .gregorian)
    
    var body: some View {
        
        VStack(spacing: 10) {
            
            MonthView()
            DaysView()
            
        }
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
