import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();
  final supabase = Supabase.instance.client;

  Future<AuthResponse> googleSignin() async {
    try {
      final GoogleSignIn googleSignIn = GoogleSignIn.instance;
      await googleSignIn.initialize(
        clientId: dotenv.env['IOS_CLIENT_ID']!,
        serverClientId: dotenv.env['WEB_CLIENT_ID']!,
      );
      final account = await googleSignIn.authenticate();
      final googleAuth = account.authentication;
      final idToken = googleAuth.idToken;

      if (idToken == null) {
        throw 'No ID Token found.';
      }
      return await supabase.auth.signInWithIdToken(
        provider: OAuthProvider.google,
        idToken: idToken,
      );
    } catch (e) {
      rethrow;
    }
  }

  Future<void> signout() async {
    try {
      await supabase.auth.signOut();
    } catch (e) {
      rethrow;
    }
  }
}
