import 'package:flutter_ui_kit/main.dart';
import 'package:flutter_ui_kit/ui/components/buttons/buttons_page.dart';
import 'package:flutter_ui_kit/ui/components/input_fields/input_fields_page.dart';

class AppRoute {
  static var routeInfo = {
    "/home": (context) => HomePage(),
    "/buttons": (context) => ButtonsPage(),
    "/input-fields": (context) => InputFieldsPage()
  };
}
