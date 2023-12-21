import 'package:flutter_application_1/views/SafetyLetter/main.dart';
import 'package:flutter_application_1/views/SafetyLetter/unSign/main.dart';
import 'package:flutter_application_1/widget/SignatureWidget.dart';
import 'package:flutter_application_1/widget/filePreview.dart';
import 'package:get/get.dart';

import '../views/Index/main.dart';
import '../views/Login/main.dart';

class AppRoute {
  static final routes = [
    GetPage(name: "/", page: () => Index()),
    GetPage(name: "/login", page: () => Login()),
    GetPage(name: "/safetyLetter", page: () => SafetyLetter()),
    GetPage(name: "/unSign", page: () => UnSign()),
    GetPage(name: "/filePreview", page: () => FilePreview()),
    GetPage(name: "/signature", page: () => SignatureWidget()),
  ];
}
