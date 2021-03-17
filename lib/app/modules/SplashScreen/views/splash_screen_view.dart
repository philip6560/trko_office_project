import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:test_project_one/app/utils/styles.dart';
import '../controllers/splash_screen_controller.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    SplashScreenController controller = Get.put(SplashScreenController());

    return Scaffold(
      backgroundColor: MyStyle.darkblue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 15,
                child: Container(
                  // color: Colors.white,
                    child: Image.asset('assets/images/logo_png.png', width: 144.0, height: 76.0,))),
            // SizedBox(height: 50.0,),
            Expanded(
              flex: 2,
                child: Container(
                  // color: Colors.black,
                    child: Text('specialmansolution.com', style: GoogleFonts.poppins(color: MyStyle.white, fontSize: 16.0,),))),
          ],
        ),
      ),
    );
  }
}


