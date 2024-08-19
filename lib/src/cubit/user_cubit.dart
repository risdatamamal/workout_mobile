import 'dart:io';

import 'package:workout_management_class/src/models/models.dart';
import 'package:workout_management_class/src/services/services.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(const UserInitial());

  Future<void> login(String email, String password) async {
    ApiReturnValue<User> result = await UserServices.login(email, password);

    if (result.value != null) {
      emit(UserLoaded(result.value!));
    } else {
      emit(UserLoadingFailed(result.message));
    }
  }

  Future<void> register(User user, String password) async {
    ApiReturnValue<User> result = await UserServices.register(user, password);

    if (result.value != null) {
      emit(UserLoaded(result.value!));
    } else {
      emit(UserLoadingFailed(result.message));
    }
  }

  Future<void> logout() async {
    ApiReturnValue<String> result = await UserServices.logout();

    if (result.value != null) {
      emit(UserLoadedLogout(result.value!));
    } else {
      emit(UserLoadingFailed(result.message));
    }
  }
}