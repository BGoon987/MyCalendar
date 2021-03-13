//
//  MonthView.swift
//  MyCalendar
//
//  Created by 裴良洙 on 2021/03/13.
//

import SwiftUI

struct MonthView: View {
    
    var monthWidth = UIScreen.main.bounds.width * 0.9
    
    @State var dateModel = DateModel()
    
    
    
    var body: some View {
        
        VStack {
            HStack {
                Button(action: {
                    _ = dateModel.nextMonth()
                    
                    
                    
                }, label: {
                    Image(systemName: "arrowtriangle.left.fill")
                })
                Spacer()
                
                Text(dateModel.monthStyle)
                
                Spacer()
                
                Button(action: {
                    // Next Month move action
                    
                }, label: {
                    Image(systemName: "arrowtriangle.right.fill")
                })
                
            }
            .frame(width: monthWidth)
        }
        
    }
}

struct MonthView_Previews: PreviewProvider {
    static var previews: some View {
        MonthView()
    }
}
