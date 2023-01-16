import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class OnboardingCRMFirebaseUser {
  OnboardingCRMFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

OnboardingCRMFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<OnboardingCRMFirebaseUser> onboardingCRMFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<OnboardingCRMFirebaseUser>(
      (user) {
        currentUser = OnboardingCRMFirebaseUser(user);
        return currentUser!;
      },
    );
