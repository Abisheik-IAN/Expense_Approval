


import 'package:expensesapproval/components/Button.dart';
import 'package:expensesapproval/res/colors.dart';
import 'package:expensesapproval/res/images.dart';
import 'package:expensesapproval/screens/forgetpassword.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => login();
}

class login extends State<Login>{
  final _username=TextEditingController();
  final _password=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child:Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Stack(
                children: <Widget>[
                  Center(
                  child:Container(
                    padding: EdgeInsets.only(top: 100.0),
                    child: Image(image: AssetImage('assets/optisollogo.png'),width: 150.0,),
                  ),),
                  Container(
                    padding: EdgeInsets.only(top: 185.0,left: 30.0),
                    child: Text("Email",
                        style: TextStyle(fontFamily: 'worksans', color: txtbold, fontSize: 16,fontWeight: FontWeight.w600)),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 215.0,left: 30.0,right: 30.0),
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
                  ),Container(
                    padding: EdgeInsets.only(top: 285.0,left: 30.0),
                    child: Text("Password",
                        style: TextStyle(fontFamily: 'worksans', color: txtbold, fontSize: 16,fontWeight: FontWeight.w600)),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 315.0,left: 30.0,right: 30.0),
                    child: TextField(
                      decoration: new InputDecoration(
                        suffixIcon: FlatButton.icon(onPressed:(){ print('pressed');}, icon: Icon(Icons.remove_red_eye), label: Text('')),
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
                          hintText: "Password",
                          fillColor: txtfield),
                    ),
                  ),InkWell(child: Container(
                    padding: EdgeInsets.only(top: 385.0,left: 30.0,right: 30.0),
                    child: Text("                                  Forget password?",
                        style: TextStyle(fontFamily: 'worksans', color: subtxtlite, fontSize: 16,fontWeight: FontWeight.w600,)),
                    ),
                    onTap:(){
//                      Navigator.push(context,MaterialPageRoute(builder: (context)=> ForgetPassword()));
                        showAlertDialog(context);
                    },

                  ),
                  Container(
                    padding: EdgeInsets.only(top: 425.0,left: 30.0,right: 30.0),
                    child: CustomButtom('Sign in',330.0,55.0,null,theme,Colors.white),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 495.0,left: 30.0,right: 30.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text("            If any problem?",
                          style: TextStyle(fontFamily: 'worksans', color: subtxtlite, fontSize: 16,fontWeight: FontWeight.w600,)),
                        Text("Contact us",
                            style: TextStyle(fontFamily: 'worksans', color: theme, fontSize: 16,fontWeight: FontWeight.w600,))

                      ],
                    )
                  )
                ],
              ),

          ],
        ),
      ),
      )
    );
  }
  showAlertDialog(BuildContext context) {

    // set up the button
    Widget okButton = Container(padding: EdgeInsets.only(top:20.0,left: 20.0,right: 20.0),child:CustomButtom('Reset Password',253.0,45.0,null,theme,Colors.white));
    Widget txtbox=Container(
      width: 315,
      padding: EdgeInsets.only(left: 20.0,right: 20.0),
      child: TextField(
        decoration: new InputDecoration(

            border: new OutlineInputBorder(
              borderSide: BorderSide(
//                    width: 0,
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
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Forgot Password?",
          style: TextStyle(fontFamily: 'worksans', color: txtbold, fontSize: 16,fontWeight: FontWeight.w600)),
      content: Text("Please enter your office email to update your password",
      style: TextStyle(fontFamily: 'worksans', color: subtxtlite, fontSize: 16,fontWeight: FontWeight.w600)),
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(15)),
      actions: [
        txtbox,
        okButton,
      ],

    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;

      },
    );
  }

}