

import 'package:expensesapproval/res/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

InputDecoration textField(String placeholder,Color fieldcolor){

  return  InputDecoration(

          border: new OutlineInputBorder(
            borderSide: BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
            borderRadius: const BorderRadius.all(
              const Radius.circular(10.0),
            ),
          ),
          filled: true,
          hintStyle: new TextStyle(color: Colors.grey[800]),
          hintText: placeholder,
          fillColor: fieldcolor
  );

}

Widget text(String fieldname,Color txtcolor,FontWeight fontWeight){
  return Text(fieldname,
      style: TextStyle(fontFamily: 'worksans', color: txtcolor, fontSize: 16,fontWeight: fontWeight),textAlign: TextAlign.left,);
}