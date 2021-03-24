import 'package:get/get.dart';
import '../modules/EditPaymentScreen/bindings/add_payment_screen_binding.dart';
import '../modules/EditPaymentScreen/views/edit_payment_screen_view.dart';

import '../modules/AddPaymentScreen/bindings/add_payment_screen_binding.dart';
import '../modules/AddPaymentScreen/views/add_payment_screen_view.dart';
import '../modules/AddUpdateScreen/bindings/add_update_screen_binding.dart';
import '../modules/AddUpdateScreen/views/add_update_screen_view.dart';
import '../modules/EditUpdateScreen/bindings/edit_update_screen_binding.dart';
import '../modules/EditUpdateScreen/views/edit_update_screen_view.dart';
import '../modules/PaymentsScreen/bindings/payments_screen_binding.dart';
import '../modules/PaymentsScreen/views/payments_screen_view.dart';
import '../modules/UpdatesScreen/bindings/updates_screen_binding.dart';
import '../modules/UpdatesScreen/views/updates_screen_view.dart';
import '../modules/ClientProjectScreen/bindings/client_project_screen_binding.dart';
import '../modules/ClientProjectScreen/views/client_project_screen_view.dart';
import '../modules/ClientsScreen/bindings/clients_screen_binding.dart';
import '../modules/ClientsScreen/views/clients_screen_view.dart';
import '../modules/HomeScreen/bindings/home_screen_binding.dart';
import '../modules/HomeScreen/views/home_screen_view.dart';
import '../modules/LoginScreen/bindings/login_screen_binding.dart';
import '../modules/LoginScreen/views/login_screen_view.dart';
import '../modules/ProjectScreen/bindings/project_screen_binding.dart';
import '../modules/ProjectScreen/views/project_screen_view.dart';
import '../modules/SplashScreen/bindings/splash_screen_binding.dart';
import '../modules/SplashScreen/views/splash_screen_view.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.SPLASH_SCREEN;

  static final routes = [
    GetPage(
      name: Routes.HOME_SCREEN,
      page: () => HomeScreen(),
      binding: HomeScreenBinding(),
    ),
    GetPage(
      name: Routes.LOGIN_SCREEN,
      page: () => LoginScreen(),
      binding: LoginScreenBinding(),
    ),
    GetPage(
      name: Routes.SPLASH_SCREEN,
      page: () => SplashScreen(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: Routes.PROJECT_SCREEN,
      page: () => ProjectScreen(),
      binding: ProjectScreenBinding(),
    ),
    GetPage(
      name: Routes.PAYMENTS_SCREEN,
      page: () => PaymentsScreen(),
      binding: PaymentsScreenBinding(),
    ),
    GetPage(
      name: Routes.CLIENTS_SCREEN,
      page: () => ClientsScreen(),
      binding: ClientsScreenBinding(),
    ),
    GetPage(
      name: Routes.CLIENT_PROJECT_SCREEN,
      page: () => ClientProjectScreen(),
      binding: ClientProjectScreenBinding(),
    ),
    GetPage(
      name: Routes.ADD_PAYMENT_SCREEN,
      page: () => AddPaymentScreen(),
      binding: AddPaymentScreenBinding(),
    ),
    GetPage(
      name: Routes.EDIT_PAYMENT_SCREEN,
      page: () => EditPaymentScreen(),
      binding: EditPaymentScreenBinding(),
    ),
    GetPage(
      name: Routes.ADD_UPDATE_SCREEN,
      page: () => AddUpdateScreen(),
      binding: AddUpdateScreenBinding(),
    ),
    GetPage(
      name: Routes.EDIT_UPDATE_SCREEN,
      page: () => EditUpdateScreen(),
      binding: EditUpdateScreenBinding(),
    ),
    GetPage(
      name: Routes.UPDATES_SCREEN,
      page: () => UpdatesScreen(),
      binding: UpdatesScreenBinding(),
    ),
  ];
}
