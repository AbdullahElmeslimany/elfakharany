part of 'select_value_cubit.dart';

@immutable
sealed class SelectValueState {}

final class SelectValueInitial extends SelectValueState {}

final class ChangeValueState extends SelectValueState {
  final value;

  ChangeValueState({this.value});
}
