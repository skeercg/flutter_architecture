import 'package:flutter_architecture/domain/entities/user.dart';

abstract class UsersService {
  Future<User> getUser(String id);
}
