import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:luxushotels/widgets/myappbar.dart';

 DateTime kNow = DateTime.now();
  DateTime kFirstDay = DateTime(kNow.year, kNow.month - 3, kNow.day);
  DateTime kLastDay = DateTime(kNow.year, kNow.month + 3, kNow.day);

class CalendarPage extends StatelessWidget {

  static const d_green = const Color(0xFF54D3C2);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      body: Column(
        children: [
          PeriodSection(),
          CalendarRange(),
          ValidateBookingSection(),
        ],
      ),
    );
  }
}

class PeriodSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Départ',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Colors.grey[700],
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  'Mois 12 décembre',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            Container(
              height: 60,
              width: 1,
              color: Colors.grey[350],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Revenir',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Colors.grey[700],
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  'mar 22 déc',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ],
        ),
        Divider(
          color: Colors.grey,
          height: 1,
        ),
      ],
    );
  }
}

class CalendarRange extends StatefulWidget {
  @override
  _CalendarRangeState createState() => _CalendarRangeState();
}

class _CalendarRangeState extends State<CalendarRange> {
  static const Color d_green = Color(0xFF54D3C2);

  CalendarFormat _calendarFormat = CalendarFormat.month;
  RangeSelectionMode _rangeSelectionMode = RangeSelectionMode
      .toggledOn; // Can be toggled on/off by longpressing a date
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  DateTime? _rangeStart;
  DateTime? _rangeEnd;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      color: Colors.grey[10],
      child: Expanded(
        child: TableCalendar(
          lastDay: kLastDay,
          focusedDay: _focusedDay,
          selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
          rangeStartDay: _rangeStart,
          rangeEndDay: _rangeEnd,
          calendarFormat: _calendarFormat,
          headerStyle: HeaderStyle(
            titleCentered: true,
            formatButtonVisible: false,
            titleTextStyle: TextStyle(fontSize: 18),
          ),
          calendarStyle: CalendarStyle(
            isTodayHighlighted: false,
            rangeHighlightColor: d_green,
            rangeStartDecoration: BoxDecoration(
              color: d_green,
              shape: BoxShape.circle,
              border: Border.fromBorderSide(
                BorderSide(
                  color: Colors.white,
                  width: 3,
                  style: BorderStyle.solid,
                ),
              ),
            ),
            withinRangeTextStyle: TextStyle(
              color: Colors.white,
            ),
            rangeEndDecoration: BoxDecoration(
              color: d_green,
              shape: BoxShape.circle,
              border: Border.fromBorderSide(
                BorderSide(
                  color: Colors.white,
                  width: 3,
                  style: BorderStyle.solid,
                ),
              ),
            ),
          ),
          firstDay: kFirstDay,
          rangeSelectionMode: _rangeSelectionMode,
          onDaySelected: (selectedDay, focusedDay) {
            if (!isSameDay(_selectedDay, selectedDay)) {
              setState(() {
                _selectedDay = selectedDay;
                _focusedDay = focusedDay;
                _rangeStart = null;
                _rangeEnd = null;
                _rangeSelectionMode = RangeSelectionMode.toggledOff;
              });
            }
          },
          onRangeSelected: (start, end, focusedDay) {
            setState(() {
              _selectedDay = null;
              _focusedDay = focusedDay;
              _rangeStart = start;
              _rangeEnd = end;
              _rangeSelectionMode = RangeSelectionMode.toggledOn;
            });
          },
          onFormatChanged: (format) {
            if (_calendarFormat != format) {
              setState(() {
                _calendarFormat = format;
              });
            }
          },
          onPageChanged: (focusedDay) {
            _focusedDay = focusedDay;
          },
        ),
      ),
    );
  }
}

class ValidateBookingSection extends StatelessWidget {
  static const Color d_green = const Color(0xFF54D3C2);
  final selectedRadio = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RadioListTile(
          value: selectedRadio,
          activeColor: d_green,
          groupValue: selectedRadio,
          selected: true,
          title: Text(
            "Flexible avec les dates",
            style: new TextStyle(
              color: Colors.black,
              fontSize: 20.0,
            ),
          ),
          onChanged: null,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          width: double.infinity,
          child: ElevatedButton(
            child: const Text(
              'Appliquer',
              style: TextStyle(fontSize: 17),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: d_green,
              padding: const EdgeInsets.all(15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
            onPressed: () {
              print('Appliquer la réservation');
              Navigator.pop(context);
            },
          ),
        ),
      ],
    );
  }
}