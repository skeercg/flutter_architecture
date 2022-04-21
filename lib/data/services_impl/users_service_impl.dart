import 'package:flutter_architecture/data/repository/users_repository.dart';
import 'package:flutter_architecture/domain/entities/user.dart';
import 'package:flutter_architecture/domain/services/users_service.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: UsersService)
class UsersServiceImpl implements UsersService {
  UsersServiceImpl(this.repository);

  final UsersRepository repository;

  @override
  Future<User> getUser(String id) async {
    final result = await repository.getUser(id);

    return result;
  }
}
