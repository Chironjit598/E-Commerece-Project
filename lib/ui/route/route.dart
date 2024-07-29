import 'package:ecommerce/ui/views/not_found.dart';
import 'package:ecommerce/ui/views/splash.dart';
import 'package:get/get.dart';

const String splash = "/splsh-screen";
const String unknown = "/not-found";

List<GetPage> getPages = [
  GetPage(
    name: splash,
    page: () => const SplashScreen(),
  ),
  GetPage(
    name: unknown,
    page: () => const UnknownScreen(),
  ),
];
