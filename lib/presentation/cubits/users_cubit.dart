import 'package:flutter_architecture/domain/services/users_service.dart';
import 'package:flutter_architecture/presentation/cubits/profile_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit({required this.service}) : super(ProfileStateLoading()) {
    logIn();
  }

  final UsersService service;

  Future<void> logIn() async {
    emit(ProfileStateLoading());
    final result = await service.getUser('id_12345');

    return emit(ProfileStateLoaded(user: result));
  }

  Future<void> logOut() async {
    emit(ProfileStateLoading());

    return emit(ProfileStateUnloaded());
  }
}
