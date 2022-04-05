import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'laundry_state.dart';

class LaundryCubit extends Cubit<LaundryState> {
  LaundryCubit() : super(LaundryInitial());

  Future<void> getLaundry() async {
    // ApiReturnValue<List<Laudry>>;
  }
}
