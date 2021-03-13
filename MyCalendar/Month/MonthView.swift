//
//  MonthView.swift
//  MyCalendar
//
//  Created by 裴良洙 on 2021/03/13.
//

import SwiftUI

struct MonthView: View {
    
    var monthWidth = UIScreen.main.bounds.width * 0.9
    
    
    var body: some View {
        
        VStack {
            HStack {
                Button(action: {
                    Date().year
                    
                    
                    
                }, label: {
                    Image(systemName: "arrowtriangle.left.fill")
                })
                Spacer()
                HStack {
                    Text(Date().year.description)
                    Text(Date().month.description)
                }
                
                
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
