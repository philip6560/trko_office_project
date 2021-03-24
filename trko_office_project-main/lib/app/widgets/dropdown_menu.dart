

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trko/app/utils/responsive.dart';
import 'package:trko/app/utils/styles.dart';

class MileStonesList extends StatelessWidget {

  final Function onChanged;
  final int currentItem;

  MileStonesList({Key key, this.currentItem, this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: width(25.0), right: width(15.0), top: height(3.0)),
      width: width(373.0),
      height: height(56.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(height(30.0)),
        border: Border.all(color: MyColor.formfield_border),
      ),
      child: DropdownButton(
        isExpanded: true,
        underline: Container(),
        onChanged: this.onChanged,
        icon: Icon(Icons.keyboard_arrow_down_rounded, color: MyColor.dark_blue, size: height(35.0),),
        value: this.currentItem,
        items: List.generate(2, (index)=> DropdownMenuItem(
            value: index,
            child: Text('Prototype$index', style: GoogleFonts.poppins(fontSize: height(18.0)),
            ),
          ),
        ),
      ),
    );
  }
}