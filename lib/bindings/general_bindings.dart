import 'package:get/get.dart';
import '../utils/http/network_manager.dart';

class GeneralBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NetworkManager());
  }
}
