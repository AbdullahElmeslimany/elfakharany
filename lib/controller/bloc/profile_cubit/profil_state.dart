part of 'profil_cubit.dart';

@immutable
sealed class ProfilState {}

final class ProfilInitial extends ProfilState {}

final class ProfileSuccess extends ProfilState {
  final data;

  ProfileSuccess({this.data});
}

final class GetDataCarError extends ProfilState {}
