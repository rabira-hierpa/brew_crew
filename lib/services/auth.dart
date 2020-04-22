import 'package:brew_crew/models/user.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // AnonUser model from FirebaseUser
  User _anonUserFirebase(FirebaseUser user){
    return user != null ? User(uid: user.uid) : null;
  }

  // auth change user stream
  Stream<User> get user {
    return _auth.onAuthStateChanged.map(_anonUserFirebase); 
  }

  // sign in anon
  Future signInAnon() async {
    try {
      AuthResult result = await _auth.signInAnonymously();
      FirebaseUser user = result.user; 
      return _anonUserFirebase(user);
    } on Exception catch (e) {
          print('Unable to sign in anonymously' + e.toString());
          return null;
    }
  }

  // sign in with email and password

  // register with email and password

  // sign out

}

