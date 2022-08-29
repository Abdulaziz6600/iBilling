part of 'calendar_cubit.dart';

@immutable
abstract class CalendarState {}

class CalendarInitial extends CalendarState {}

class CalendorLoading extends CalendarState {}

class CalendarLoaded extends CalendarState {


  CalendarLoaded();
}
class CalendarError extends CalendarState {}