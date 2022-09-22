import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:luxushotels/widgets/myappbar.dart';

DateTime kNow = DateTime.now();
DateTime kFirstDay = DateTime(kNow.year, kNow.month - 3, kNow.day);
DateTime kLastDay = DateTime(kNow.year, kNow.month + 3, kNow.day);
const d_green = Color(0xFF54D3C2);
 

class CalendarPage extends StatelessWidget {

  const CalendarPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      body:  Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.end,
        
          children:  const <Widget>[
           
           Expanded(
            
              child: PeriodSection(),
              
           ),
           
            Expanded(
            
            child: CalendarRange(),
            ),
           
              Expanded(
               
                  child: ValidateBookingSection(),
                 
           ),
            
          ],
        ),
      
    );
  }
}

class PeriodSection extends StatelessWidget {

  const PeriodSection({super.key});

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
                'Arrivée',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Colors.grey[700],
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              const Text(
                'Sam 12 décembre',
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
                'Départ',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Colors.grey[700],
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              const Text(
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
      const Divider(
        color: Colors.grey,
        height: 1,
      ),
    ],
    );
  }
}

class CalendarRange extends StatefulWidget {
  const CalendarRange({super.key});

  @override
  State<CalendarRange> createState() => _CalendarRangeState();
}

class _CalendarRangeState extends State<CalendarRange> {
  
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
      padding: const EdgeInsets.all(5),
      color: Colors.grey[10],
      child:  TableCalendar(
          lastDay: kLastDay,
          focusedDay: _focusedDay,
          selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
          rangeStartDay: _rangeStart,
          rangeEndDay: _rangeEnd,
          calendarFormat: _calendarFormat,
          headerStyle: const HeaderStyle(
            titleCentered: true,
            formatButtonVisible: false,
            titleTextStyle: TextStyle(fontSize: 18),
          ),
          calendarStyle: const CalendarStyle(
            isTodayHighlighted: false,
            rangeHighlightColor: d_green,
            rangeStartDecoration: BoxDecoration(
              color: d_green,
              shape: BoxShape.circle,
              border: Border.fromBorderSide(
                BorderSide(
                  color: Colors.white,
                  width: 2,
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
                  width: 2,
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
      
    );
  }
}

class ValidateBookingSection extends StatelessWidget {
  final selectedRadio = 1;

  const ValidateBookingSection({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
        child: RadioListTile(
          value: selectedRadio,
          activeColor: d_green,
          groupValue: selectedRadio,
          selected: true,
          title: const Text(
            "Flexible avec les dates",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
            ),
          ),
          onChanged: null,
        ),
        ),
      
      Expanded(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          width: double.infinity /2,
          child: ElevatedButton(
            child:  Text(
              'Appliquer',
              style: GoogleFonts.nunito(
                fontSize: 17,
                color: Colors.white,
                fontWeight: FontWeight.w600,

              ),
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
      ),
      ],
    );
  }
}
