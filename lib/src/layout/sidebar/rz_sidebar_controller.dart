import 'package:get/get.dart';
import 'package:responsive_builder_kit/responsive_builder_kit.dart';

class RzSidebarController extends GetxController {
  static bool _init = false;
  static String _defaultPage = "";
  final activeItem = _defaultPage.obs;
  final hoverItem = ''.obs;

  static void init({
    required String defaultPage,
  }) {
    _defaultPage = defaultPage;
    _init = true;
  }

  static void _checkInit() {
    assert(_init, "You must call RzSidebarController.init() inside a Widget build method after MaterialApp.");
  }

  void changeActiveItem(String route) => activeItem.value = route;

  void changeHoverItem(String route) {
    _checkInit();
    if(activeItem.value != route) hoverItem.value = route;
  }

  bool isActive(String route) => activeItem.value == route;
  bool isHovering(String route) => hoverItem.value == route;
  
  void onTapMenu(String route) {
    _checkInit();
    if(!isActive(route)) {
      changeActiveItem(route);
      
      if(Responsive.isMobile(Get.context!)) Get.back();

      Get.toNamed(route);
    }
  }
}