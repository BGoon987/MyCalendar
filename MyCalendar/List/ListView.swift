//
//  ListView.swift
//  MyCalendar
//
//  Created by 裴良洙 on 2021/04/14.
//

import SwiftUI

struct ListView: View {
    
    @State var listdataStore = listDataStore
    
    var body: some View {
        
        NavigationView {
            List {
                ForEach(listdataStore, id: \.id) { item in
                    HStack {
                        Text(item.time)
                        Text(item.title)
                    }
                }
                .onDelete(perform: delete)
                .onMove { (indexSet, index) in
                    self.listdataStore.move(fromOffsets: indexSet, toOffset: index)
                }
            }
            .toolbar {
                HStack {
                    NavigationLink(
                        destination: ListAddView(),
                        label: {
                            Text("Add")
                        })
                    EditButton()
                }
                
                
            }
            .navigationTitle("Sample List")
            
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
