
import SwiftUI

struct ListView: View {
    
    @State var showAddView = false
    
    @Binding var selectedYear: String
    @Binding var selectedMonth: String
    @Binding var selectedDay: String
    @Binding var selectedDayOfWeekday: String
    @Binding var currentDate: Date
    
    var body: some View {
        ZStack {
            List {
                Section(header: SectionHeader(
                            sectionColor: Color.orange,
                            selectedMonth: self.$selectedMonth,
                            selectedDay: self.$selectedDay,
                            selectedDayOfWeekday: self.$selectedDayOfWeekday)) {
                    ForEach(listDataStore, id: \.id) { item in
                        if String(item.year) == self.selectedYear &&
                            String(item.day) == self.selectedDay &&
                            String(item.month) == self.selectedMonth {
                            HStack {
                                Text(item.time)
                                Text(item.title)
                                Spacer()
                                Image(systemName : "circle")
                                    .onTapGesture {
                                        // Check and Clear list
                                    }
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
                ListAddView(showAddList: $showAddView,
                            currentDate: $currentDate,
                            selectedYear: Int(selectedYear)!,
                            selectedMonth: Int(selectedMonth)!,
                            selectedDay: Int(selectedDay)!)
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
    @Binding var selectedDayOfWeekday: String
    
    var body: some View {
        ZStack {
            HStack {
                Text("\(selectedMonth) / \(selectedDay) \(dayOfWeekdayChange())")
                    .padding(10)
                    .font(.largeTitle)
                Spacer()
            }
        }
        .frame(width: UIScreen.main.bounds.width)
        .background(sectionColor)
        
    }
    
    func dayOfWeekdayChange() -> String {
        switch selectedDayOfWeekday {
        case "1":
            return "SUN"
        case "2":
            return "MON"
        case "3":
            return "TUE"
        case "4":
            return "WED"
        case "5":
            return "THU"
        case "6":
            return "FRI"
        case "7":
            return "SAT"
        default:
            return "Error"
        }
    }
}




struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView(selectedYear: ContentView().$selectedYear,
                 selectedMonth: ContentView().$selectedMonth,
                 selectedDay: ContentView().$selectedDay,
                 selectedDayOfWeekday: ContentView().$selectedDayOfWeekday,
                 currentDate: ContentView().$currentDate)
    }
}
