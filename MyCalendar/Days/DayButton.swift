//
//  DayButton.swift
//  MyCalendar
//
//  Created by 裴良洙 on 2021/03/15.
//

import SwiftUI

struct DayButton: View {
    
     
    
    var body: some View {
        
        Button(action: {
            
        }, label: {
            Circle()
                .foregroundColor(.orange)
                .overlay(
                    Text("?")
                )
        })
        
    }
}

struct DayButton_Previews: PreviewProvider {
    static var previews: some View {
        DayButton()
    }
}
