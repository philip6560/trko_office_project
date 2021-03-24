import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trko/app/modules/ClientsScreen/views/clients_screen_view.dart';
import 'package:trko/app/utils/responsive.dart';
import 'package:trko/app/utils/styles.dart';
import 'package:trko/app/widgets/appbar.dart';
import 'package:trko/app/widgets/cards.dart';
import '../controllers/home_screen_controller.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    HomeScreenController controller = Get.put(HomeScreenController());
    
    return  MediaQuery(
      data: MyTextScaleFactor.factor,
      child: Scaffold(
        
        appBar: AppBar(
          backgroundColor: MyColor.dark_blue,
          title: Text('Home',),
          centerTitle: false,
          actions: [
            // first icon button
            AppbarButton(icon: 'assets/svg/customer svg.svg', onTap: (){  Get.to(ClientsScreen());  },),

            SizedBox(width: width(26.0),),

            // second icon button
            AppbarButton(icon: 'assets/svg/phone-call svg.svg',),

            SizedBox(width: width(26.0),),

            // third icon button
            AppbarButton(icon: 'assets/svg/whatsapp svg.svg',),

            SizedBox(width: width(10.0),),
          ],
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.only(top: height(31.0), left: width(10.0), right: width(10.0)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                CardTemplate1(
                    title: "Project XYZ and YZ", projectstatus: MyColor.strong_orange
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
      ),
    );
  }
}
  