import 'package:equatable/equatable.dart';

abstract class ToggleEvent extends Equatable {
  const ToggleEvent();

  @override
  List<Object> get props => [];
}

class ToggleButtonPressed extends ToggleEvent {}