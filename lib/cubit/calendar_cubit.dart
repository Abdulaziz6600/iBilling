import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
part 'calendar_state.dart';


class CalendarCubit extends Cubit<CalendarState> {
  CalendarCubit() : super(CalendarInitial());
var selectTime = DateTime.now();
}