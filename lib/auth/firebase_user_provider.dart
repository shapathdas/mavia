import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class MaviaFirebaseUser {
  MaviaFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

MaviaFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<MaviaFirebaseUser> maviaFirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<MaviaFirebaseUser>(
      (user) {
        currentUser = MaviaFirebaseUser(user);
        return currentUser!;
      },
    );
