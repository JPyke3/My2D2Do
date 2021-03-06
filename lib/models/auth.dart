import 'package:firebase_auth/firebase_auth.dart';

/*
 The first thing i did was rename the file auth.dart, I figured this was more appropriate
 The next thing was i renamed the class to just Auth, i figured this would be a bit more readable
 Last thing i did was move the file into the Models folder, figured it would make more sense
*/

/// The authentication Class, used for logging in users.
class Auth { // Change: Renamed this class to just auth, probably looks a bit neater :) Totally wasnt necessary and what you did previously would have worked
    //To create new User
    // Wow im really impressed by how well you build the function. It looks super good and exactly how i would have done it
    // All i changed is the static keyword at the start of the function. All this does is make the function accessable from
    // Other files

  /// The Single Firebase Authentication Instance
  static FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  /// Function used to create a user and return the email as a string
  static Future<String> createUser(String email, String password) async{
    await firebaseAuth
        .createUserWithEmailAndPassword(
            email: email, password: password);
    return email;
  }

/// Function used to sign in a user and return the email as a string
  static Future<String> signIn(String email, String password) async{
    await firebaseAuth
        .signInWithEmailAndPassword(
            email: email, password: password);
    return email;
  }
}