import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class PankajSAFirebaseUser {
  PankajSAFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

PankajSAFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<PankajSAFirebaseUser> pankajSAFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<PankajSAFirebaseUser>(
            (user) => currentUser = PankajSAFirebaseUser(user));
