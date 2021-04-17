//
//  ListView.swift
//  MyCalendar
//
//  Created by 裴良洙 on 2021/04/14.
//

import SwiftUI

struct ListView: View {
    
    @State var showAddView = false
    
    var body: some View {
        ZStack {
            NavigationView {
                List {
                    ForEach(listDataStore, id: \.id) { item in
                        HStack {
                            Text(item.time)
                            Text(item.title)
                        }
                    }
                    .onDelete(perform: delete)
                    .onMove { (indexSet, index) in
                        
                        listDataStore.move(fromOffsets: indexSet, toOffset: index)
                        
                    }
                }
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
                .navigationTitle("Sample List")
                
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

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
