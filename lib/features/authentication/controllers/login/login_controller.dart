import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import '../../../../data/repositories/authentication/authentication_repo.dart';
import '../../../../utils/popups/loaders.dart';
import '../../../../navigation_menu.dart';

class LoginController extends GetxController {
  final SupabaseClient supabase = Supabase.instance.client;

  Future<void> googleSignIn() async {
    try {
      final response = await AuthenticationRepository.instance.googleSignin();
      final user = response.user;
      final session = response.session;
      if (user != null && session != null) {
        KLoaders.successSnackBar(
          title: 'Success!',
          message: 'Signed in successfully',
        );
        Get.to(() => const NavigationMenu());
      }
    } catch (e) {
      KLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    }
  }
}
