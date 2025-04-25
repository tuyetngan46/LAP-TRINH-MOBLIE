import 'package:flutter_bloc/flutter_bloc.dart';
import 'toggle_event.dart';
import 'toggle_state.dart';

class ToggleBloc extends Bloc<ToggleEvent, ToggleState> {
  ToggleBloc() : super(const ToggleState(isToggled: false)) {
    on<ToggleButtonPressed>((event, emit) {
      emit(ToggleState(isToggled: !state.isToggled));
    });
  }
}