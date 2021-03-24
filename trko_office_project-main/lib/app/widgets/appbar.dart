
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trko/app/utils/responsive.dart';

import '../utils/responsive.dart';
import '../utils/responsive.dart';


class AppbarButton extends StatelessWidget {

  final String icon;
  final Function onTap;

  const AppbarButton({Key key, this.icon, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onTap,
      child: Container(
        child: SvgPicture.asset(icon),
      ),
    );
  }
}



class NavbackButton extends StatelessWidget {

  static double leading_width = height(48.0);
  static double titlespacing = width(0.0);
  
  NavbackButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){  Get.back();  },
      child: Container(
        alignment: Alignment.centerLeft,
        margin: EdgeInsets.only(left: width(10.0),),
        child: Icon(CupertinoIcons.chevron_back, size: height(32.0),),
      ),
    );
  }
}




class ScreenName extends StatelessWidget {
  final String screen_name;
  ScreenName({Key key, this.screen_name}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
    padding: EdgeInsets.only(top: height(4.0)),
    alignment: Alignment.centerLeft,
      child: Text(this.screen_name, style: GoogleFonts.poppins(fontSize: height(18.0)),)
  );
}