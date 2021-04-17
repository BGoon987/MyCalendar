# MyCalendar
Making Custom Calendar

Making Calendar without using library

2021/03/13
- Making Month View and increase/decrease month 

2021/03/15
- Making Week, Day View (Ongoing...)

2021/03/20
- Ongoing

2021/03/31
- Making new DateModel using DateFormatter and modify for MyCalendar
- reference: [mecid's Gist](https://gist.github.com/mecid/f8859ea4bdbd02cf5d440d58e936faec), ETC....

2021/04/03
- tried to show CurrentMonth and move previous & prior Month through Button Action <br>
  using 'if currentMonth == selectedMonth ... { showing currentMonth } else { not Viewing }' <br>
  (to compare Int(MonthView().monthHeader) and Int(Date().monthNumber)) <br>
- but cannot add Int data to Int(MonthView().monthHeader)
- I'll try using GeometryReader 

2021/04/05
- Complete: Apply Monthly calendar movement through button action <br>
  (Using GeometryReader & Padding. lead and trail padding have Equal width)
  - Delete ScrollView <br>
  (what is required for the calendar is a fixed move that is limited to a month to month, not Scroll Gesture)
- assignment: Button's Layout (to be located on either side of MonthView's Header), ETC...

2021/04/15
- Add ListView <br>
  (When user tap on a date, can move to the list of that date) <br>
- assignment: DataModel and ListView modification / Making addListView  <br>
  (Disply only the list for the date)

2021/04/18
- Complete: Making AddListView <br>
  (User can input Title and Time Data : Tap "Add" Button in ListView -> input title / time -> tap button of bottom -> append Data and return ListView)<br>
- assignment: modify some Layout
