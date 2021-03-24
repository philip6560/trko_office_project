import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trko/app/modules/AddPaymentScreen/views/add_payment_screen_view.dart';
import 'package:trko/app/utils/responsive.dart';
import 'package:trko/app/utils/styles.dart';
import 'package:trko/app/widgets/appbar.dart';
import 'package:trko/app/widgets/cards.dart';

import '../controllers/payments_screen_controller.dart';

class PaymentsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    PaymentsScreenController controller = Get.put(PaymentsScreenController());
    return MediaQuery(
      data: MyTextScaleFactor.factor,
      child: Scaffold(
        appBar: AppBar(
          leading: NavbackButton(),
          leadingWidth: NavbackButton.leading_width,
          title: ScreenName(screen_name: "Payments",),
          titleSpacing: NavbackButton.titlespacing,
          centerTitle: false,
        ),
        body: Center(
          child: Container(
            height: height(799.0),
            padding: EdgeInsets.only(left: width(10.0), top: height(25.0), right: width(10.0)),
            child: Column(
              children: [

                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: width(1.0),),
                  child: Text(
                    "Project XYZ an YZ",
                    style: GoogleFonts.poppins(fontSize: width(18.0), fontWeight: FontWeight.w700, color: Colors.black),
                  ),
                ),

                SizedBox(height: height(14.0),),

                Container(
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.only(right: width(1.0),),
                  child: Text(
                    "NGN 1,000,000 / NGN 5,000,000",
                    style: GoogleFonts.poppins(fontSize: width(18.0), fontWeight: FontWeight.w500, color: MyColor.dark_blue),
                  ),
                ),

                SizedBox(height: height(12.0),),
                
                SlidableCardTemplate(),

                SizedBox(height: height(19.0),),

                SlidableCardTemplate(),

                SizedBox(height: height(19.0),),

                SlidableCardTemplate(),

              ],
            ),
          ),
        ),

              floatingActionButton: Obx(()=>
          Visibility( visible: controller.is_button_visible.value,
            child: FloatingActionButton(
              backgroundColor: MyColor.dark_cyan,
              onPressed: (){  Get.to(AddPaymentScreen());  },
              child: Icon(Icons.add, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
