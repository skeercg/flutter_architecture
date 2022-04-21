import 'package:flutter_architecture/domain/entities/user.dart';
import 'package:injectable/injectable.dart';

abstract class UsersRepository {
  Future<User> getUser(String id);
}

@Singleton(as: UsersRepository)
class UsersRepositoryImpl implements UsersRepository {
  @override
  Future<User> getUser(String id) async {
    final fakeRequest = await Future.delayed(
      Duration(seconds: 3),
      () => User(
        id: 'id_12345',
        name: 'Alikhan',
        occupation: 'Loafer',
        age: 17,
      ),
    );

    return fakeRequest;
  }
}
