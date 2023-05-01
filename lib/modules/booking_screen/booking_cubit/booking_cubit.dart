import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_badr/modules/booking_screen/booking_cubit/booking_states.dart';

class BookingCubit extends Cubit<BookingStates> {
  BookingCubit() : super(BookingInitialState());

  void preLoadData() {}
}
