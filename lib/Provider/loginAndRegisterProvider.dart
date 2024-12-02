import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import '../Services/Authentications.dart';

class Logprovider extends ChangeNotifier {
  bool _isLoggedIn = false;
  bool get isLoggedIn => _isLoggedIn;

  Future<void> signIn(
      String email, String password, BuildContext context) async {
    final AuthService _auth = AuthService();
    User? user = await _auth.signIn(email, password);

    if (user != null) {
      _isLoggedIn = true;
      notifyListeners();
      print('Đăng nhập thành công');
      context.go('/homepage');
    } else {
      _isLoggedIn = false;
      notifyListeners();
      print("Đăng nhập không thành công");
    }
  }

  Future<void> signUp(String username, String email, String password,
      BuildContext context) async {
    final AuthService _auth = AuthService();
    User? user = await _auth.signUp(email, password);

    if (user != null) {
      _isLoggedIn = true;
      notifyListeners();
      print('Đăng nhập thành công');
      context.go('/homepage');
    } else {
      _isLoggedIn = false;
      notifyListeners();
      print("Đăng nhập không thành công");
    }
  }
}
