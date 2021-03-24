import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trko/app/modules/ClientProjectScreen/controllers/client_project_screen_controller.dart';
import 'package:trko/app/utils/responsive.dart';
import 'package:trko/app/utils/styles.dart';
import 'package:trko/app/widgets/appbar.dart';
import 'package:trko/app/widgets/cards.dart';

class ClientProjectScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    ClientProjectScreenController controller = Get.put(ClientProjectScreenController());
    
    return MediaQuery(
      data: MyTextScaleFactor.factor,
      child: Scaffold(
        
        appBar: AppBar(
          backgroundColor: MyColor.dark_blue,
          leading: NavbackButton(),
          leadingWidth: NavbackButton.leading_width,
          title: ScreenName(screen_name: "Client's Project",),
          titleSpacing: NavbackButton.titlespacing,
          centerTitle: false,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: height(31.0),),

              CardTemplate1(
                title: "Project XYZ and YZ", projectstatus: MyColor.strong_orange,
              ),

              SizedBox(height: height(21.0),),

              CardTemplate1(
                  title: "Project XYZ and YZ", projectstatus: MyColor.dark_cyan,
              ),

              SizedBox(height: height(21.0),),

              CardTemplate1(
                  title: "Project XYZ and YZ", projectstatus: MyColor.dark_cyan,
              ),
            ],
          ), 
        ),
      ),
    );
  }
}
  