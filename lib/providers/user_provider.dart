import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart'; // Comentado temporariamente
import '../models/user_model.dart';

class UserProvider extends ChangeNotifier {
  UserModel? _user;
  bool _isLoading = false;
  
  UserModel? get user => _user;
  bool get isLoading => _isLoading;
  
  void setUser(UserModel user) {
    _user = user;
    notifyListeners();
  }
  
  void clearUser() {
    _user = null;
    notifyListeners();
  }
  
  void setLoading(bool loading) {
    _isLoading = loading;
    notifyListeners();
  }
  
  // bool get isLoggedIn => FirebaseAuth.instance.currentUser != null; // Comentado temporariamente - Requer Firebase Auth ativo
  // TODO: Implementar lógica de login sem Firebase ou ativar Firebase
  bool get isLoggedIn => _user != null; // Placeholder: considera logado se _user não for nulo
  
  bool get isAdmin => _user != null && (_user!.role == 'admin' || _user!.role == 'owner');
  
  bool get isOwner => _user != null && _user!.role == 'owner';
}
