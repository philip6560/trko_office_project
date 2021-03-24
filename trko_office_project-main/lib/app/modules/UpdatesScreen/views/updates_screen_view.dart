import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trko/app/modules/AddUpdateScreen/controllers/add_update_screen_controller.dart';
import 'package:trko/app/modules/AddUpdateScreen/views/add_update_screen_view.dart';
import 'package:trko/app/utils/responsive.dart';
import 'package:trko/app/utils/styles.dart';
import 'package:trko/app/widgets/appbar.dart';
import 'package:trko/app/widgets/cards.dart';

import '../../../utils/styles.dart';
import '../controllers/updates_screen_controller.dart';

class UpdatesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    UpdatesScreenController controller = Get.put(UpdatesScreenController());
    return MediaQuery(
      data: MyTextScaleFactor.factor,
      child: Scaffold(
        appBar: AppBar(
          leading: NavbackButton(),
          leadingWidth: NavbackButton.leading_width,
          title: ScreenName(screen_name: "Updates",),
          titleSpacing: NavbackButton.titlespacing,
          centerTitle: false,
          actions: [
            // first icon button
            AppbarButton(icon: 'assets/svg/phone-call svg.svg',),

            SizedBox(width: width(26.0),),

            // second icon button
            AppbarButton(icon: 'assets/svg/whatsapp svg.svg',),

            SizedBox(width: width(10.0),),
          ],
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              padding: EdgeInsets.only(left: width(10.0), top: height(20.0), right: width(10.0)),
              child: Column(
                children: [

                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: width(1.0),),
                    child: Text(
                      "Project XYZ an YZ",
                      style: GoogleFonts.poppins(fontSize: height(18.0), fontWeight: FontWeight.w700, color: Colors.black),
                    ),
                  ),

                  SizedBox(height: height(40.0), ),

                  CardTemplate4(status: MyColor.pale_cyan,),

                  CardConnector(),

                  CardTemplate4(),

                  CardConnector(),

                  CardTemplate4(),

                  CardConnector(),

                  CardTemplate4(),


                ],
              ),
            ),
          ),
        ),

        floatingActionButton: Obx(()=>
          Visibility( visible: controller.is_button_visible.value,
            child: FloatingActionButton(
              backgroundColor: MyColor.dark_cyan,
              onPressed: (){   Get.to(AddUpdateScreen());   },
              child: Icon(Icons.add, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
