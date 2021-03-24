import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:trko/app/modules/ClientProjectScreen/controllers/client_project_screen_controller.dart';
import 'package:trko/app/utils/responsive.dart';
import 'package:trko/app/utils/styles.dart';
import 'package:trko/app/widgets/appbar.dart';
import 'package:trko/app/widgets/cards.dart';
import 'package:trko/app/widgets/text_fields.dart';

import '../controllers/clients_screen_controller.dart';

class ClientsScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    ClientsScreenController controller = Get.put(ClientsScreenController());
    return MediaQuery(
      data: MyTextScaleFactor.factor,
      child: Scaffold(
        appBar: AppBar(
          leading: NavbackButton(),
          leadingWidth: NavbackButton.leading_width,
          title: ScreenName(screen_name: 'Clients',),
          titleSpacing: NavbackButton.titlespacing,
          centerTitle: false,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              padding: EdgeInsets.only(top: height(16.0), left: width(10.0), right: width(10.0)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                      // searchbox field label
                      FieldLabel(
                        labelname: 'Search',
                      ),

                      SizedBox(height: height(9.0),),

                      // searchbox field
                      MyFormField(
                        fieldKey: controller.field1,
                      ),

                      SizedBox(height: height(22.0),),

                      // Futurebuilder in conjuction with list view builder are to be utilized for the results.
                      // search results
                      CardTemplate1(
                        title: "NNPC",
                      ),

                      SizedBox(height: height(19.0),),

                      CardTemplate1(
                        title: "US Army",
                      ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
