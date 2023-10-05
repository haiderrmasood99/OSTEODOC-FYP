import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class OsteoDocFirebaseUser {
  OsteoDocFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

OsteoDocFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<OsteoDocFirebaseUser> osteoDocFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<OsteoDocFirebaseUser>(
            (user) => currentUser = OsteoDocFirebaseUser(user));
