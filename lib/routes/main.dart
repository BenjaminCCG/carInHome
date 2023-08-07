import 'package:get/get.dart';

import '../views/Index/main.dart';
import '../views/Login/main.dart';

class AppRoute {
  static final routes = [
    GetPage(name: "/", page: () => Index()),
    GetPage(name: "/login", page: () => Login())
  ];
}
