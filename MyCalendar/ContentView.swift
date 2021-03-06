
import SwiftUI

struct ContentView: View {
    @Environment(\.calendar) var calendar
    
    
    private var year: DateInterval {
        calendar.dateInterval(of: .year, for: currentDate)!
    }
    
    @State var selectedYear: String = ""
    @State var selectedMonth: String = ""
    @State var selectedDay: String = ""
    @State var selectedDayOfWeekday: String = ""
    @State var currentDate = Date()
    
    
    var body: some View {
        NavigationView {
            CalendarView(interval: year, currentDate: $currentDate) { date in
                NavigationLink(
                    destination: ListView(selectedYear: $selectedYear, selectedMonth: $selectedMonth,
                                          selectedDay: $selectedDay, selectedDayOfWeekday:$selectedDayOfWeekday,
                                          currentDate: $currentDate)
                        .onAppear(perform: {
                            
                            self.selectedYear = String(self.calendar.component(.year, from: date))
                            self.selectedMonth = String(self.calendar.component(.month, from: date))
                            self.selectedDay = String(self.calendar.component(.day, from: date))
                            self.selectedDayOfWeekday = String(self.calendar.component(.weekday, from: date))
                            
                            // Test Print
                            
                            print("\(currentDate.year)" + "/" + selectedMonth + "/" + selectedDay)
                            
                        }),
                    label: {
                        Text("30")
                            .hidden()
                            .padding(8)
                            .background(Color.orange)
                            .clipShape(Circle())
                            .padding(.vertical, 4)
                            .overlay(
                                Text(String(self.calendar.component(.day, from: date)))
                            )               
                    })
                    .navigationBarHidden(true)
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
