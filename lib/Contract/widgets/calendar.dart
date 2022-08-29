import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jiffy/jiffy.dart';

import '../../cubit/calendar_cubit.dart';

class DayPage extends StatefulWidget {
  const DayPage({Key? key}) : super(key: key);

  @override
  _DayPageState createState() {
    return _DayPageState();
  }
}

class _DayPageState extends State<DayPage> {
  DateTime _selectedDateRange = DateTime.now();
  DateTime today = DateTime.now();
  DateTime? _selectedDate;
  List<Widget> _days = [];

  @override
  initState() {
    _days = _renderDays();
    for (int i = 0; i < _days.length; i++) {
      if (_days[i] == today) {}
    }

    _selectedDate = DateTime.now();

    _renderDay(DateTime.now());
    super.initState();
  }

  Widget _renderDay(DateTime date) {
    var newFormat = DateFormat("E");
    bool selected = false;

    String weekdayName = newFormat.format(date);
    if (_selectedDate != null) {
      selected = _selectedDate!.isAtSameMomentAs(date);
    }
    return BlocProvider(
      create: (context) => CalendarCubit(),
      child: BlocBuilder<CalendarCubit, CalendarState>(
        builder: (context, state) {
          return GestureDetector(
            behavior: HitTestBehavior.translucent,
            child: Container(
              width: 46,
              height: 72,
              decoration: date == DateTime.now()
                  ? BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: Colors.black)
                  : BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: Colors.white),
              child: SizedBox(
                // width: 40,
                child: Column(
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(top: 4, bottom: 7),
                        child: Text(tr(weekdayName.substring(0, 2)),
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                                color: selected ? Colors.white : Colors.grey,
                                fontFamily: 'Ubuntu'))),
                    Padding(
                      padding: const EdgeInsets.only(top: 2.0),
                      child: Text(date.day.toString(),
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 15,
                              color: selected ? Colors.white : Colors.grey,
                              fontFamily: 'Ubuntu')),
                    ),
                    Text(
                      '__',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 15,
                          color: selected ? Colors.white : Colors.grey,
                          fontFamily: 'Ubuntu'),
                    ),
                    const SizedBox(
                      width: 15,
                      height: 8,
                      child: Divider(height: 8),
                    )
                  ],
                ),
              ),
            ),
            onTap: () async {
              _selectedDate = date;
              _days = _renderDays();
              print(_selectedDate.toString());

              setState(() {});
            },
          );
        },
      ),
    );
  }

  DateTime getDate(DateTime d) => DateTime(d.year, d.month, d.day);

  List<Widget> _renderDays() {
    var start = getDate(_selectedDateRange
        .subtract(Duration(days: _selectedDateRange.weekday - 1)));

    List<Widget> _days = [];
    for (int i = 0; i < 6; i++) {
      if (start.weekday == 7) {
        continue;
      }

      _days.add(_renderDay(start));
      start = start.add(const Duration(days: 1));
    }
    return _days;
  }

  @override
  Widget build(BuildContext context) {
    var newFormat = DateFormat.MMMMd('en');
    String weekdayName = "";
    if (_selectedDate == null) {
      weekdayName = newFormat.format(_selectedDateRange);
    } else {
      weekdayName = newFormat.format(_selectedDate!);
    }
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(15),
      ),
      // decoration: AppDecorations.decoWithShadow(),
      height: 145,
      child: Row(children: [
        Expanded(
          child: Container(
              height: MediaQuery.of(context).size.height * 0.22,
              color: const Color(0xff1E1E20),
              child: Padding(
                padding: const EdgeInsets.all(2),
                child: Column(
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: Row(
                              children: [
                                Text(tr(weekdayName.split(" ").first),
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 18,
                                        color: Color(0xffD1D1D1),
                                        fontFamily: 'Ubuntu')),
                                const SizedBox(
                                  width: 3,
                                ),
                                const Text(
                                  ',',
                                  style: TextStyle(
                                      color: Color(0xffD1D1D1), fontSize: 25),
                                ),
                                Text(DateFormat.y().format(DateTime.now()),
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 18,
                                        color: Color(0xffD1D1D1),
                                        fontFamily: 'Ubuntu')),
                              ],
                            ),
                          ),
                          Row(children: [
                            IconButton(
                              icon: const Icon(
                                Icons.arrow_back_ios,
                                color: Color(0xffD1D1D1),
                              ),
                              onPressed: () {
                                DateTime d = getDate(
                                    _selectedDateRange.subtract(Duration(
                                        days: _selectedDateRange.weekday - 1)));
                                d = d.subtract(const Duration(days: 7));
                                setState(() {
                                  _selectedDateRange = d;
                                  _selectedDate = null;
                                  _days = _renderDays();
                                });
                              },
                            ),
                            IconButton(
                              icon: const Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xffD1D1D1),
                              ),
                              onPressed: () {
                                DateTime d = getDate(_selectedDateRange.add(
                                    Duration(
                                        days: DateTime.daysPerWeek -
                                            _selectedDateRange.weekday)));
                                d = d.add(const Duration(days: 1));
                                setState(() {
                                  _selectedDateRange = d;
                                  _selectedDate = null;
                                  _days = _renderDays();
                                });
                              },
                            )
                          ])
                        ]),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: _days),
                    )
                  ],
                ),
              )),
        )
      ]),
    );
    // );
  }
}
