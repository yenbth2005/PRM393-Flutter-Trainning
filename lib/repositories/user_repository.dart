import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:untitled1/data/models/user.dart';
part 'user_repository.g.dart';

@riverpod
UserReposistories userReposistories(Ref ref) {
  return UserReposistories();
}

class UserReposistories {
  // Danh sách users mẫu
  final List<User> users = [
    User(username: 'admin', password: '123'),
    User(username: 'user1', password: '123'),
  ];

  // Lấy danh sách users
  Future<List<User>> getUsers() async {
    return List<User>.unmodifiable(users);
  }

  // Đăng nhập (kiểm tra username và password)
  Future<User?> login(String username, String password) async {
    try {
      return users.firstWhere(
        (user) => user.username == username && user.password == password,
      );
    } catch (_) {
      return null;
    }
  }

  // Đăng ký / Thêm user mới
  Future<void> register(User user) async {
    if (users.any((u) => u.username == user.username)) {
      throw StateError('Tài khoản "${user.username}" đã tồn tại');
    }
    users.add(user);
  }

  // Tìm user theo username
  Future<User?> getUserByUsername(String username) async {
    for (final user in users) {
      if (user.username == username) {
        return user;
      }
    }
    return null;
  }
}
