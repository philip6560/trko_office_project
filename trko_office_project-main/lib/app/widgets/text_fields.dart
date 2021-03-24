//Define your text fields here
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trko/app/utils/responsive.dart';
import 'package:trko/app/utils/styles.dart';

class MyFormField extends StatelessWidget {

  // final TextInputAction textInputAction;
  // final TextEditingController textEditingController;
  final ValueKey fieldKey;


  MyFormField({this.fieldKey}) : assert(fieldKey != null);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: height(56.0),
      child: TextFormField(
        autofocus: false,
        // key: this.fieldKey,
        cursorColor: MyColor.dark_blue,
        // textInputAction: this.textInputAction,
        // controller: this.textEditingController,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: height(20.30), horizontal: width(26.0)),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(height(28.0)),
            borderSide: BorderSide(color: MyColor.formfield_border, width: 0.0),
          ), 
        ),
      ),
    );
  }
}


class FieldLabel  extends StatelessWidget {

  final String labelname;

  FieldLabel ({Key key, this.labelname}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: width(26.0)),
      child: Text(
        this.labelname,
        style: GoogleFonts.poppins(color: MyColor.formfield_label, fontSize: height(15.0), ),
      ),
    );
  }
}



class DescriptionField extends StatelessWidget {

  
  // final TextInputAction textInputAction;
  // final TextEditingController textEditingController;
  final ValueKey fieldKey;
  
  DescriptionField({Key key, this.fieldKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width(373.0),
      height: height(287.0),
      child: TextFormField(
        // key: this.fieldKey,
        autofocus: false,
        maxLines: 30,
        cursorColor: MyColor.dark_blue,
        // textInputAction: this.textInputAction,
        // controller: this.textEditingController,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: height(18.0), horizontal: width(26.0)),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(height(28.0)),
            borderSide: BorderSide(color: MyColor.formfield_border),
          ),
        ),
      ),
    );
  }
}