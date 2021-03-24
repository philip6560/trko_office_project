import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trko/app/modules/EditUpdateScreen/views/edit_update_screen_view.dart';
import 'package:trko/app/modules/PaymentsScreen/controllers/payments_screen_controller.dart';
import 'package:trko/app/modules/ProjectScreen/views/project_screen_view.dart';
import 'package:trko/app/utils/responsive.dart';
import 'package:trko/app/utils/styles.dart';

import '../utils/responsive.dart';


// used in client project, client's and home screen
class CardTemplate1 extends StatelessWidget {

  final String title; 
  final Color projectstatus;
  final Function onTap;

  double radius = 10.0;

 CardTemplate1({Key key, this.title, this.projectstatus, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){  Get.to(ProjectScreen()); },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(height(radius)),
        ),
        elevation: 1.0,
        color: Colors.white,
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: 6.0,
                offset: Offset(0.0, 1.0),
                color: MyColor.shadow_color1,
              ),
            ],
          ),
          child: Row(
            children: [

              // project title
              Expanded(
                flex: 14,
                child: Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: width(15.0)),
                  height: height(81.0),
                  child: Text(
                    this.title, style: GoogleFonts.poppins(fontSize: height(18.0), fontWeight: FontWeight.normal),
                  ),
                ),
              ),

              // icon indicating projects status based on its color
              Expanded(
                flex: 3,
                child: Container(
                  decoration: BoxDecoration(
                    color: this.projectstatus,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(radius), bottomRight: Radius.circular(radius),)
                  ),
                  height: height(81.0),
                  child: Icon(Icons.keyboard_arrow_right_rounded, color: Colors.white, size: 40.0,),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



// used in project details screen
class CardTemplate2 extends StatelessWidget {
  
  final String icon;
  final String name;
  final Function onTap;

  const CardTemplate2({Key key, this.name, this.icon, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onTap,
      child: Card(
        margin: EdgeInsets.all(0.0),
        elevation: 3.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(height(10.0)),
        ),
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: 6.0,
                offset: Offset(0.0, 3.0),
                color: MyColor.shadow_color2,
              ),
            ],
          ),
          height: height(151.0),
          width: width(166.0),
          child: Column(
            children: [

              Flexible(
                flex: 5,
                child: Container(
                  alignment: Alignment.center,
                  child: SvgPicture.asset(this.icon),
                ),
              ),

              Flexible(
                flex: 2,
                child: Container(
                  alignment: Alignment.topCenter,
                  child: Text(this.name, style: GoogleFonts.poppins(fontSize: height(18.0),)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


// used in payments screen
class SlidableCardTemplate extends StatelessWidget {


  SlidableCardTemplate({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    print('Main : ${Get.find<PaymentsScreenController>().slidableController.value.activeState}');
    return
      Obx(()=>
        Slidable(
          controller: Get.find<PaymentsScreenController>().slidableController.value,
          actionPane: SlidableDrawerActionPane(),
          actionExtentRatio: 0.25,
          child: CardTemplate3(),
          secondaryActions: [

            Container(
            height: height(113.0),
              child: IconSlideAction(
                iconWidget: SvgPicture.asset("assets/svg/edit-white.svg"),
                color: MyColor.slightly_desaturated_yellow,
                onTap: (){},
              ),
            ),

            Container(
            height: height(113.0),
              child: IconSlideAction(
                icon: Icons.delete,
                color: MyColor.strong_red,
                onTap: (){},
              ),
            ),

          ],
        // ),
    ),
      );
  }
}

// used in payments screen
class CardTemplate3 extends StatelessWidget {

  const CardTemplate3({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('${Get.find<PaymentsScreenController>().slidableController.value.activeState}');
    return Obx(()=> GestureDetector(
      onTap: (){   Get.find<PaymentsScreenController>().slidableController.value.activeState.open(actionType: SlideActionType.secondary);    },
      child: Card(
        elevation: 3.0,
        shadowColor: MyColor.shadow_color2,
        margin: EdgeInsets.all(0.0),
        shape: RoundedRectangleBorder(
            borderRadius: Get.find<PaymentsScreenController>().showRadius.value?
            BorderRadius.only(topLeft: Radius.circular(10.0), bottomLeft: Radius.circular(10.0)) : BorderRadius.circular(10.0),
          ),
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: 6.0,
                offset: Offset(0.0, 3.0),
                color: MyColor.shadow_color2,
              ),
            ],
          ),
          width: width(373.0),
          height: height(113.0),
          padding: EdgeInsets.only(left: width(14.0), top: height(16.0), bottom: height(20.0)),
          child: Column(
                children: [

                  Expanded(
                    child: Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "22-01-2021 11:01 am",
                        style: GoogleFonts.poppins(fontSize: height(14.0),color: MyColor.strong_orange),
                      ),
                    ),
                  ),

                  Expanded(
                    child: Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(left: width(1.0)),
                      child: Text(
                        "NGN 5,000,000",
                        style: GoogleFonts.poppins(fontSize: height(17.0), color: MyColor.dark_cyan,),
                      ),
                    ),
                  ),

                  Expanded(
                    child: Container(
                      alignment: Alignment.bottomLeft,
                      margin: EdgeInsets.only(left: width(1.0)),
                      child: Text(
                        "Payment for XYZ",
                        style: GoogleFonts.poppins(fontSize: height(14.0), color: MyColor.dark_gray),
                        ),
                    ),
                  ),
                ],
              ),
        ),
      ),
    ),
    );
  }
}


// used in updates screen
class CardTemplate4 extends StatelessWidget {

  final Color status;

  const CardTemplate4({Key key, this.status}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
      color: status == null ? Colors.white : status,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(height(10.0)),
      ),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 6.0,
              offset: Offset(0.0, 3.0),
              color: MyColor.shadow_color2,
            ),
          ],
        ),
        width: width(373.0),
        padding: EdgeInsets.only(left: width(14.0), top: height(15.0), bottom: height(17.0), right: width(14.0)), //,
        child: Column(
          children: [

            // topmost section
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Text(
                    "22-01-2021 11:01 am",
                    style: GoogleFonts.poppins(fontSize: height(14.0),color: MyColor.strong_orange),
                  ),

                  Text(
                    "Mobile App",
                    style: GoogleFonts.poppins(fontSize: height(14.0), color: MyColor.dark_blue,),
                  ),

                ]
              ),
            ),

            SizedBox(height: height(15.0),),

            // center section
            Container(
              // alignment: Alignment.centerLeft,
              child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry."
                "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.\n"
                "\nIt has survived not only five centuries, but also the leap into electronic typesetting,"
                " remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset "
                "sheets container.",
                style: GoogleFonts.poppins(fontSize: height(17.0), color: MyColor.dark_gray,),
              ),
            ),

            SizedBox(height: height(30.0),),

            // bottom section
            Container(
              alignment: Alignment.bottomLeft,
              child: Text(
                "Https://google.com",
                style: GoogleFonts.poppins(fontSize: height(17.0), color: MyColor.dark_cyan),
              ),
            ),

            // bottom-most section
            Visibility(
              visible: status == null ? false : true,
              child: Container(
                alignment: Alignment.bottomRight,
                child: CardTemplate4Buttons(),
              ),
            ),

          ]
        ),
      ),
    );
  }
}

// used in updates screen
class CardTemplate4Buttons extends StatelessWidget {

  const CardTemplate4Buttons({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [

        GestureDetector(
          onTap: (){    },
          child: Container(
              child: Icon(CupertinoIcons.checkmark_alt_circle, color: MyColor.dark_cyan, size: height(24.0),)
          ),
        ),

        SizedBox(width: width(22.75),),

        GestureDetector(
          onTap: (){  Get.to(EditUpdateScreen());  },
          child: Container(
              width: width(21.0),
              height: height(20.89),
              child: SvgPicture.asset("assets/svg/edit-black.svg")
          ),
        ),

        SizedBox(width: width(20.75),),

        GestureDetector(
          onTap: () {},
            child: Icon(Icons.delete, size: height(24.0),),
        ),
      ],
    );
  }
}


// used in updates screen
class CardConnector extends StatelessWidget {

  const CardConnector({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width(28.0),
      height: height(28.0),
      child: SvgPicture.asset("assets/svg/connector.svg"),
    );
  }
}




