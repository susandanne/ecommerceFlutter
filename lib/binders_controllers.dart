import 'package:ecommerceflutter/presentation/stateControllers/MainNavControllers.dart';
import 'package:get/get.dart';

class BindersController extends Bindings{
  @override
  void dependencies() {
    Get.put(MainNavControllers());
  }

}