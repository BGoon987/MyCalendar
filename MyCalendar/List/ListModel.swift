
import Foundation

struct ListModel: Identifiable {
    
    var id = UUID()
    
    var time: String
    var title: String
    var year: Int
    var month: Int
    var day: Int
    var dayOfWeekday: String
    
    init(time: String, title: String, year: Int, month: Int, day: Int, dayOfWeekday: String) {
        self.time = time
        self.title = title
        self.year = year
        self.month = month
        self.day = day
        self.dayOfWeekday = dayOfWeekday
    }
}
