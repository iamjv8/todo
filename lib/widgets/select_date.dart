import 'package:calendar_strip/calendar_strip.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SelectDate extends StatefulWidget {
  @override
  _SelectDateState createState() => _SelectDateState();
}

class _SelectDateState extends State<SelectDate> {
  String _currentMonth = DateFormat.MMMM().format(DateTime.now());
  DateTime startDate = DateTime.now().subtract(Duration(days: 365));
  DateTime endDate = DateTime.now().add(Duration(days: 365));
  DateTime selectedDate = DateTime.now().subtract(Duration(days: 2));

  onSelect(data) {
     _currentMonth = DateFormat.MMMM().format(data);
  }

  _monthNameWidget(_) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Text(_currentMonth, style: Theme.of(context).textTheme.subtitle),
      padding: EdgeInsets.only(top: 10, bottom: 10, left: 30),
    );
  }

  dateTileBuilder(
      date, selectedDate, rowIndex, dayName, isDateMarked, isDateOutOfRange) {
    bool isSelectedDate = date.compareTo(selectedDate) == 0;

    TextStyle normalStyle = TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.w800,
        color: Theme.of(context).primaryColor);

    TextStyle selectedStyle = TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.w800,
        color: Theme.of(context).secondaryHeaderColor);

    TextStyle normalDayStyle =
        TextStyle(fontSize: 14.5, color: Theme.of(context).accentColor);

    TextStyle dayNameStyle = TextStyle(
        fontSize: 14.5, color: Theme.of(context).secondaryHeaderColor);

    List<Widget> _children = [
      Text(dayName, style: !isSelectedDate ? normalDayStyle : dayNameStyle),
      Text(date.day.toString(),
          style: !isSelectedDate ? normalStyle : selectedStyle),
    ];

    return AnimatedContainer(
      padding: EdgeInsets.only(left: 10, right: 10),
      duration: Duration(milliseconds: 0),
      curve: Curves.ease,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.all(Radius.circular(6)),
      ),
      child: Container(
        child: Column(
          children: _children,
        ),
      ),
    );
  }

  final numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0];

  @override
  Widget build(BuildContext context) {
    return CalendarStrip(
      startDate: startDate,
      endDate: endDate,
      onDateSelected: onSelect,
      dateTileBuilder: dateTileBuilder,
      iconColor: Color.fromRGBO(56, 195, 183, 1),
      monthNameWidget: _monthNameWidget,
      addSwipeGesture: true,
      containerDecoration: BoxDecoration(),
    );
    // return Container(
    //   child: Column(
    //     children: <Widget>[
    //       Container(),
    // Container(
    //   alignment: Alignment.centerLeft,
    //   padding: EdgeInsets.symmetric(
    //     horizontal: 30,
    //   ),
    //   child: Text(
    //     _currentMonth,
    //     style: Theme.of(context).textTheme.subtitle,
    //   ),
    // ),
    // Container(
    //   padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
    //   height: MediaQuery.of(context).size.height * 0.35,
    //   child: ListView.builder(
    //     scrollDirection: Axis.horizontal,
    //     itemCount: numbers.length,
    //     itemBuilder: (context, index) {
    //       return Container(
    //         width: MediaQuery.of(context).size.width * 0.6,
    //         child: Card(
    //           color: Colors.blue,
    //           child: Container(
    //             child: Center(
    //               child: Text(
    //                 numbers[index].toString(),
    //                 style: TextStyle(color: Colors.white, fontSize: 36.0),
    //               ),
    //             ),
    //           ),
    //         ),
    //       );
    //     },
    //   ),
    // )
    //     ],
    //   ),
    // );
  }
}
