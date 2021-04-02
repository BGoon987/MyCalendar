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
