# MyCalendar
Making Custom Calendar

Making Calendar by myself

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

2021/04/19
- Ongoing: Modify ListView's Section header<br>
  (The Month/Day selected in ContentView is displayed in ListView's Section)<br>
  
 2021/04/20
 - Ongoing: Modify ListView's Section Layout<br>
  (Only the list corresponding to the day of the week selected by the user in CalendarView is displayed)<br>
 - assignment: When saving a new value in ListAddView, the month/day selected in CalendarView can be saved<br>
  (Now, if User saves the value, it is saved as the date at the present time)
  
 2021/04/28
 - Complete: When saving a new value in ListAddView, the month/day selected in CalendarView can be saved<br>
 - assignment: The problem that changing or deletion of the List using EditButton() is not immediately refelected on the screen
 
 2021/04/30
 - Delete ListModel().isClear <br>
  (Unable isClear.toggle() in ForEach -> Changing the color / going down to the bottom of the ListView / <br> changing it in a way that makes it invisible)
 
 2021/05/27
 - Complete: Shifting Year and Month <br>
(Data cannot be modified with existing extensions, so it is replaced with another function)

2021/06/01
- Complete: Fix the Issue that CalendarView() is not visible when moving the month with the year changing

2021/06/08
- Complete: Add selectedYear in ListModel() / Allows Additons to reflect the selected year<br>
(Data is saved based on the year that was selected when the List()'s screen appeared.)

2021/06/09
- Complete: Add "Today" Button
