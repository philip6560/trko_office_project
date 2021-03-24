import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trko/app/utils/responsive.dart';
import 'package:trko/app/utils/styles.dart';
import '../../../utils/responsive.dart';
import '../controllers/splash_screen_controller.dart';

class SplashScreen extends GetView<SplashScreenController> {
  @override
  Widget build(BuildContext context) {

    Get.put(SplashScreenController());

    return MediaQuery(
      data: MyTextScaleFactor.factor,
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: MyColor.dark_blue,

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              // logo section
              Container(
                margin: EdgeInsets.only(top: height(388.0)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: height(76.0),
                      alignment: Alignment.centerRight,
                      color: MyColor.greenish,
                      child: Padding(
                        padding: EdgeInsets.only(left: width(17.0)),
                        child: Text('TRK', style: TextStyle(fontSize: height(50.0), fontFamily: 'Optima', color: Colors.white),),
                      )
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      height: height(76.0),
                      child: Text('O', style: TextStyle(fontSize: height(50.0), fontFamily: 'Optima', color: MyColor.whitishred),)),
                  ],
                ),
              ),

              // company label section
              Container(
                  margin: EdgeInsets.only(bottom: height(73.0)),
                // color: Colors.black,
                  child: Text('specialmansolution.com', style: GoogleFonts.poppins(color: MyColor.white, fontSize: height(16.0),),)),
            ],
          ),
        ),
      ),
    );
  }
}


