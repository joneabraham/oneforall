import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class OfaFirebaseUser {
  OfaFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

OfaFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<OfaFirebaseUser> ofaFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<OfaFirebaseUser>((user) => currentUser = OfaFirebaseUser(user));
