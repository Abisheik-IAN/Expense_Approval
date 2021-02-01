

import 'package:expensesapproval/components/Button.dart';
import 'package:expensesapproval/res/colors.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title:  Text("Forgot Password?",
          style: TextStyle(fontFamily: 'worksans', color: txtbold, fontSize: 16,fontWeight: FontWeight.w600)),
      content: Text("Please enter your office email to update your password",
      style: TextStyle(fontFamily: 'worksans', color: subtxtlite, fontSize: 16,fontWeight: FontWeight.w600)),
      backgroundColor: Colors.white,
      shape:
      RoundedRectangleBorder(borderRadius: new BorderRadius.circular(15)),
      actions: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 20.0,right: 20.0),
          child: TextField(
            decoration: new InputDecoration(

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
                hintText: "abc@optisolbusiness.com",
                fillColor: txtfield),
          ),
        ),
        Container(
          child: CustomButtom('Reset Password',253.0,45.0,null,theme,Colors.white)
        ),
        Positioned(
          bottom: 10.0,
          left: 200.0,
          child: FloatingActionButton(
            child: Image.asset("assets/red_cross.png"),
            onPressed: (){
              Navigator.pop(context);
            },
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80)),
            backgroundColor: Colors.white,
            mini: true,
            elevation: 5.0,
          ),
        ),
      ],
    );

  }
}


