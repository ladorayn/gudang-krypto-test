import '../model/user.dart';
import '../services/database_service.dart';

class AuthController {
  final DatabaseService _databaseService = DatabaseService();

  Future<bool> register(String email, String password) async {
    final existingUser = await _databaseService.getUserByEmail(email);
    if (existingUser != null) {
      print('Email already exists');
      return false;
    } else {
      final newUser = User(
        id: DateTime.now().millisecondsSinceEpoch,
        email: email,
        password: password,
      );
      await _databaseService.insertUser(newUser);
      return true;
    }
  }

  Future<bool> login(String email, String password) async {
    final user = await _databaseService.getUserByEmail(email);

    if (user != null && user.password == password) {
      return true;
    } else {
      // Authentication failed
      return false;
    }
  }
}
