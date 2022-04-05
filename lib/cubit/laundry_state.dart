part of 'laundry_cubit.dart';

abstract class LaundryState extends Equatable {
  const LaundryState();

  @override
  List<Object> get props => [];
}

class LaundryInitial extends LaundryState {}

class LaundryLoaded extends LaundryState {
  final List<String> laundry;

  const LaundryLoaded(this.laundry);
  List<Object> get props => [laundry];
}

class LaundryLoadedFailed extends LaundryState {
  final String message;

  const LaundryLoadedFailed(this.message);
  List<Object> get props => [message];
}
