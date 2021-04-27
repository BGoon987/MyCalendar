//
//  ListAddView.swift
//  MyCalendar
//
//  Created by 裴良洙 on 2021/04/15.
//

import SwiftUI

struct ListAddView: View {
    
    @State var title: String = ""
    @State var date: Date = Date()
    
    @State var showPicker = false
    
    @Binding var showAddList : Bool
    
    @Binding var selectedMonth : Int
    @Binding var selectedDay: Int
    
    var addViewWidth = UIScreen.main.bounds.width
    var addViewHeight = UIScreen.main.bounds.height
    
    
    var body: some View {
        ZStack {
            Color.black.opacity(0.5)
            VStack {
                Text("Title")
                    .font(.headline)
                TextField("Enter title", text: $title)
                    .disableAutocorrection(true)
                    .frame(width: addViewWidth * 0.7)
                    .padding()
                Text("Time")
                    .font(.headline)
                
                Button(action: {
                    showPicker.toggle()
                    
                }, label: {
                    Text("\(date.hour) : \(date.minute)")
                        .font(.largeTitle)
                        .foregroundColor(Color.white)
                        
                })
                
                HStack {
                    Button(action: {
                        showAddList.toggle()
                    }, label: {
                        Image(systemName: "multiply.circle.fill")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .foregroundColor(.black)
                    })
                    Button(action: {
                        
                        saveList()
                        showAddList.toggle()
                        print(listDataStore.count)
                    }, label: {
                        Image(systemName: "checkmark.circle.fill")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .foregroundColor(.black)
                    })
                    
                }
                
                
                
            }
            .textFieldStyle(RoundedBorderTextFieldStyle())
            
            if showPicker {
                PickerView(pickDate: $date, showPicker: $showPicker)
                    .animation(.easeInOut(duration: 10.0))
                
            }
        }
    }
    func saveList() {
        listDataStore.append(
            ListModel(time:String("\(date.hour):\(date.minute)"),
                      title: title,
                      isClear: false,
                      month: selectedMonth,
                      day: selectedDay,
                      dayOfWeekday: date.dayofWeekday
            ))
        
    }
}

struct PickerView: View {
    
    @Binding var pickDate: Date
    @Binding var showPicker: Bool
    
    
    
    let dateRange: ClosedRange<Date> = {
        let calendar = Calendar.current
        let startComponents = DateComponents(year: 2021, month: 1, day: 1)
        let endComponents = DateComponents(year: 2021, month: 12, day: 31, hour: 23, minute: 59, second: 59)
        return calendar.date(from: startComponents)!...calendar.date(from: endComponents)!
        
    }()
    
    var body: some View {
        VStack {
            DatePicker("", selection: $pickDate,
                       in: dateRange,
                       displayedComponents: [.hourAndMinute])
                
                .datePickerStyle(WheelDatePickerStyle())
                .padding(.leading, 20)
                .padding(.trailing, 20)
            
            Button(action: {
                showPicker.toggle()
            }, label: {
                Image(systemName: "xmark.circle.fill")
                    .resizable().frame(width: 50, height: 50)
                    .foregroundColor(.black)
                
            })
        }
        .frame(width: UIScreen.main.bounds.width * 0.7, height: UIScreen.main.bounds.height * 0.4)
        .background(Color.white)
        .cornerRadius(50)
    }
}


//struct ListAddView_Previews: PreviewProvider {
//    static var previews: some View {
//        ListAddView(showAddList: ListView(selectedMonth: ContentView().$selectedMonth, selectedDay: ContentView().$selectedDay, selectedDayOfWeekday: ContentView().$selectedDayOfWeekday))
//    }
//}
