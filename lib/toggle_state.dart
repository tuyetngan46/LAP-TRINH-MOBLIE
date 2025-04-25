import 'package:equatable/equatable.dart';

class ToggleState extends Equatable {
  final bool isToggled;

  const ToggleState({required this.isToggled});

  @override
  List<Object> get props => [isToggled];
}