part of 'order_cubit.dart';

@immutable
sealed class OrderState {}

final class OrderInitial extends OrderState {}

final class SuccessState extends OrderState {
  final date;

  SuccessState({this.date});
}
