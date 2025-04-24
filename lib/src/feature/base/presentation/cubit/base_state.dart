part of 'base_cubit.dart';

abstract class BaseState extends Equatable {
  const BaseState();

  @override
  List<Object?> get props => [];
}

class UserListInitial extends BaseState {}

class UserListLoading extends BaseState {}

class UserListLoaded extends BaseState {
  final List<UserDTO> users;

  const UserListLoaded(this.users);

  @override
  List<Object?> get props => [users];
}

class UserListError extends BaseState {
  final String message;

  const UserListError(this.message);

  @override
  List<Object?> get props => [message];
}
