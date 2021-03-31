//
//  MonthView.swift
//  MyCalendar
//
//  Created by 裴良洙 on 2021/03/13.
//

import SwiftUI

struct MonthView1: View {
    
    var monthWidth = UIScreen.main.bounds.width * 0.9
    @State var presentMonth = Date().month
    @State var presentYear = Date().year
    
    var body: some View {
        
        VStack {
            HStack {
                Button(action: {
//                    presentMonth = DateHelper.dateAfter(month: -1, from: Date())!.month
                    
                    if presentMonth > 1 {
                        presentMonth = self.presentMonth - 1
                    } else {
                        presentYear = self.presentYear - 1
                        presentMonth = 12
                    }
                    
                }, label: {
                    Image(systemName: "arrowtriangle.left.fill")
                        .font(.largeTitle)
                })
                Spacer()
                HStack {
                    Text(presentYear.description)
                        .font(.largeTitle)
                    Text("/")
                        .font(.largeTitle)
                    Text(presentMonth.description)
                        .font(.largeTitle)
                }
                Spacer()
                
                Button(action: {
                    if presentMonth <= 11 {
                        presentMonth = self.presentMonth + 1
                    } else {
                        presentYear = self.presentYear + 1
                        presentMonth = 1
                    }
                    
                }, label: {
                    Image(systemName: "arrowtriangle.right.fill")
                        .font(.largeTitle)
                })
                
            }
            .frame(width: monthWidth)
        }
        
    }
}

struct MonthView1_Previews: PreviewProvider {
    static var previews: some View {
        MonthView1()
    }
}
