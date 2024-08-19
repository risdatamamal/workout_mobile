part of 'user_cubit.dart';

abstract class UserState extends Equatable {
  const UserState();

  @override
  List<Object> get props => [];
}

class UserInitial extends UserState {
  const UserInitial();

  @override
  List<Object> get props => [];
}

class UserLoaded extends UserState {
  final User user;
  const UserLoaded(this.user);

  @override
  List<Object> get props => [user];
}

class UserLoadedLogout extends UserState {
  final String value;
  const UserLoadedLogout(this.value);

  @override
  List<Object> get props => [value];
}

class UserLoadingFailed extends UserState {
  final String message;
  const UserLoadingFailed(this.message);

  @override
  List<Object> get props => [message];
}