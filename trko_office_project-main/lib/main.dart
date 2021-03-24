import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:trko/app/modules/AddPaymentScreen/views/add_payment_screen_view.dart';

import 'app/routes/app_pages.dart';
import 'app/utils/styles.dart';
import 'app/services/api_calls.dart';

SharedPreferences prefs;

void main() async{
  // WidgetsFlutterBinding.ensureInitialized();
  // prefs =await SharedPreferences.getInstance();
  //
  // Get.put(Webservice());

  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: "/add-update-screen",
      getPages: AppPages.routes,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primaryColor: MyColor.dark_blue,
        scaffoldBackgroundColor: MyColor.light_grayish_red,
        appBarTheme: AppBarTheme(
          elevation: 0,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: AddPaymentScreen(),
    ),
  );
}


