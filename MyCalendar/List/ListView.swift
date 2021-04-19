//
//  ListView.swift
//  MyCalendar
//
//  Created by 裴良洙 on 2021/04/14.
//

import SwiftUI

struct ListView: View {
    
    @State var showAddView = false
    
    @State var selectedMonth = ContentView().selectedMonth
    @State var selectedDay = ContentView().selectedDay
    
    var body: some View {
        ZStack {
                List {
                    Section(header: SectionHeader(
                                sectionColor: Color.orange,
                                selectedMonth: self.$selectedMonth,
                                selectedDay: self.$selectedDay)) {
                        ForEach(listDataStore, id: \.id) { item in
                            if item.isClear == false {
                                HStack {
                                    Text(item.time)
                                    Text(item.title)
                                    Spacer()
                                    Text(self.selectedMonth)
                                    Text(self.selectedDay)
                                    Image(systemName : item.isClear ? "circle.fill" : "circle")
                                }
                            }
                            
                        }
                        .onDelete(perform: delete)
                        .onMove { (indexSet, index) in
                            listDataStore.move(fromOffsets: indexSet, toOffset: index)
                        }
                    }
                    .listStyle(GroupedListStyle())
                    
                    
                }
                .navigationBarTitle("", displayMode: .inline)
                .toolbar {
                    HStack {
                        Button(action: {
                            showAddView.toggle()
                        }, label: {
                            Text("Add")
                        })
                        EditButton()
                    }
                }
            
            if showAddView {
                ListAddView(showAddList: $showAddView)
            }
        }
    }
    func delete(at offsets: IndexSet) {
        
        listDataStore.remove(atOffsets: offsets)
        
        
    }
}

struct SectionHeader: View {
    
    let sectionColor : Color
    
    @Binding var selectedMonth: String
    @Binding var selectedDay: String
    
    var body: some View {
        ZStack {
            HStack {
                Text("\(selectedMonth) / \(selectedDay) \(Date().dayName)")
                    .padding(10)
                    .font(.largeTitle)
                Spacer()
            }
            
        }
        .frame(width: UIScreen.main.bounds.width)
        .background(sectionColor)
        
            
    }
}


struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
