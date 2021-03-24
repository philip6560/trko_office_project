import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trko/app/utils/responsive.dart';
import 'package:trko/app/utils/styles.dart';
import 'package:trko/app/widgets/appbar.dart';
import 'package:trko/app/widgets/buttons.dart';
import 'package:trko/app/widgets/dropdown_menu.dart';
import 'package:trko/app/widgets/text_fields.dart';

import '../controllers/add_update_screen_controller.dart';

class AddUpdateScreen extends StatelessWidget {




  @override
  Widget build(BuildContext context) {

    AddUpdateScreenController controller = Get.put(AddUpdateScreenController());
    return MediaQuery(
      data: MyTextScaleFactor.factor,
      child: Scaffold(
        appBar: AppBar(
          leading: NavbackButton(),
          leadingWidth: NavbackButton.leading_width,
          title: ScreenName(screen_name: 'Add Update'),
          titleSpacing: NavbackButton.titlespacing,
          centerTitle: false,
        ),

        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(top: height(20.0), left: width(10.0), right: width(10.0), bottom: height(40.0)),
            child: Obx(()=>
              Form(
                key: controller.formkey.value,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    // Project title
                    Container(
                      child: Text(
                        'Project XYZ an YZ',
                        style: GoogleFonts.poppins(color: Colors.black, fontSize: width(18.0), fontWeight: FontWeight.w700),
                      )
                    ),

                    SizedBox(height: height(25.5),),

                    // milestone label
                    FieldLabel(
                      labelname: "Milestone",
                    ),

                    SizedBox(height: height(9.0),),

                    // list of milestones
                    MileStonesList(currentItem: controller.currentItem.value, onChanged: controller.selectedItem),

                    SizedBox(height: height(23.5),),

                    // description field label
                    FieldLabel(
                      labelname: "What's Completed?",
                    ),

                    SizedBox(height: height(11.0),),

                    // Description field
                    DescriptionField(
                      fieldKey: controller.field1,
                    ),

                    SizedBox(height: height(20.5),),

                    // link 1 field label
                    FieldLabel(
                      labelname: 'Any Link To Access 1',
                    ),

                    SizedBox(height: height(9.0),),

                    // link 1 field
                    MyFormField(
                      fieldKey: controller.field2,
                    ),

                    SizedBox(height: height(23.0),),

                    // link 2 field label
                    FieldLabel(
                      labelname: 'Any Link To Access 2',
                    ),

                    SizedBox(height: height(9.0),),

                    // link 2 field
                    MyFormField(
                      fieldKey: controller.field3,
                    ),

                    SizedBox(height: height(23.0),),

                    // link 3 field label
                    FieldLabel(
                      labelname: 'Any Link To Access 3',
                    ),

                    SizedBox(height: height(9.0),),

                    // note field
                    MyFormField(
                      fieldKey: controller.field4,
                    ),

                    SizedBox(height: height(32.5),),

                    Container(
                      margin: EdgeInsets.only(bottom: 40.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(

                          ),
                        ),
                      ),
                    ),



                    // save button
                    Center(
                      child: PrimaryButton(
                        label: "Save", margin: EdgeInsets.symmetric(horizontal: width(47.0), ), onPressed: (){},
                      )
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),

      ),
    );
  }
}
