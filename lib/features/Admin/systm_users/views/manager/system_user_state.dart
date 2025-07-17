import 'package:nile_brand/features/Admin/systm_users/data/models/system_user_model.dart';

abstract class SystemUsersState {}

class SystemUsersInitial extends SystemUsersState {}

class SystemUsersLoading extends SystemUsersState {}

class SystemUsersLoadSuccess extends SystemUsersState {
  final List<UserModel> users;

  SystemUsersLoadSuccess(this.users);
}

class SystemUserCreateSuccess extends SystemUsersState {
  final UserModel newUser;

  SystemUserCreateSuccess(this.newUser);
}

class SystemUserDeleteSuccess extends SystemUsersState {
  final String message;

  SystemUserDeleteSuccess(this.message);
}


class ChangeUserImage extends SystemUsersState {}


class SystemUserUpdateSuccess extends SystemUsersState {
  final String message;

  SystemUserUpdateSuccess(this.message);
}

class SystemUsersFailure extends SystemUsersState {
  final String error;

  SystemUsersFailure(this.error);
}
