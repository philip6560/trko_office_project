import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trko/app/modules/PaymentsScreen/views/payments_screen_view.dart';
import 'package:trko/app/modules/UpdatesScreen/views/updates_screen_view.dart';
import 'package:trko/app/utils/responsive.dart';
import 'package:trko/app/utils/styles.dart';
import 'package:trko/app/widgets/appbar.dart';
import 'package:trko/app/widgets/cards.dart';

import '../../../utils/responsive.dart';
import '../../../utils/responsive.dart';
import '../../../utils/responsive.dart';
import '../../../utils/styles.dart';
import '../controllers/project_screen_controller.dart';

class ProjectScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    ProjectScreenController controller = Get.put(ProjectScreenController());
    return MediaQuery(
      data: MyTextScaleFactor.factor,
      child: Scaffold(
        appBar: AppBar(
          leading: NavbackButton(),
          leadingWidth: NavbackButton.leading_width,
          title: ScreenName(screen_name: 'Project XYZ an YZ',),
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
              child: Column(
                children: [

                  // top section
                  Container(
                    padding: EdgeInsets.only(left: width(10.0), right: width(10.0), top: height(12.0), bottom: height(19.0)),
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [

                        // date
                        Container(
                          child: Text('22-01-2021', style: GoogleFonts.poppins(fontSize: height(17.0), color: MyColor.dark_gray, fontWeight: FontWeight.bold),),
                        ),

                        // details
                        Container(
                          margin: EdgeInsets.only(top: height(7.0)),
                          child: Text(
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry."
                            " Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,"
                            " when an unknown printer took a galley of type and scrambled it to make a type specimen book.\n"
                            "\nIt has survived not only five centuries, but also the leap into electronic typesetting,"
                            " remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset"
                            "sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like"
                            " Aldus PageMaker including versions of Lorem Ipsum.",
                            style: GoogleFonts.poppins(fontSize: height(17.0), color: MyColor.dark_gray,),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // bottom section
                  Container(
                    padding: EdgeInsets.only(left: width(10.0), right: width(10.0), top: height(39.0)),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        // updates option
                        CardTemplate2(name: 'Updates', icon: 'assets/svg/updated icon svg format.svg', onTap: (){  Get.to(UpdatesScreen());  },),

                        SizedBox(width: width(41.0),),

                        // payments option
                        CardTemplate2(name: 'Payments', icon: 'assets/svg/credit-card svg sample.svg', onTap: (){ Get.to(PaymentsScreen());  },),

                      ],
                    ),
                  ),
                ]
              ),
            ),
          ),
        ),
      ),
    );
  }
}
