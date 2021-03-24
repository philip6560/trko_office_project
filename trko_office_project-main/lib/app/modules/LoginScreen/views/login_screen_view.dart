import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trko/app/modules/HomeScreen/views/home_screen_view.dart';
import 'package:trko/app/utils/responsive.dart';
import 'package:trko/app/utils/styles.dart';
import 'package:trko/app/widgets/buttons.dart';
import 'package:trko/app/widgets/text_fields.dart';
import '../controllers/login_screen_controller.dart';

class LoginScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    LoginScreenController controller = Get.put(LoginScreenController());

    return MediaQuery(
      data: MyTextScaleFactor.factor,
      child: Scaffold(
        // resizeToAvoidBottomPadding: true,
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              padding: EdgeInsets.only(top: height(83.0), left: width(10.0), right: width(10.0)),
              child: IntrinsicHeight(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    // image
                    Container(
                      padding: EdgeInsets.only(bottom: height(16.0), right: width(20.0)),
                      alignment: Alignment.bottomCenter,
                      child: SvgPicture.asset('assets/svg/login.svg'),
                    ),

                    // text 1
                    Container(
                      child: Text(
                        'Login',
                        style: GoogleFonts.poppins(color: Colors.black, fontSize: height(30.0), fontWeight: FontWeight.bold),
                      ),
                    ),

                    SizedBox(height: height(14.0),),

                    // text 2
                    Container(
                      child: Text(
                        'Please Enter Details to continue',
                        style: GoogleFonts.poppins(color: Colors.black, fontSize: height(18.0), fontWeight: FontWeight.normal),
                      )
                    ),

                    SizedBox(height: height(31.0),),

                    // email field label
                    FieldLabel(
                      labelname: 'Email',
                    ),

                    SizedBox(height: height(13.0),),

                    // email field
                    MyFormField(
                      fieldKey: controller.field1,
                    ),

                    SizedBox(height: height(25.0),),

                    // password field label
                    FieldLabel(
                      labelname: 'Password',
                    ),

                    SizedBox(height: height(13.0),),

                    // password field
                    MyFormField(
                      fieldKey: controller.field2,
                    ),

                    SizedBox(height: height(52.0),),

                    // login button
                    Center(
                      child: PrimaryButton(
                        label: "Login", margin: EdgeInsets.symmetric(horizontal: width(24.0)), onPressed: (){ Get.off(HomeScreen()); },
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ),
        )
      ),
    );
  }
}
  