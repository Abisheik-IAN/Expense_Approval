import 'dart:io';

import 'package:expensesapproval/components/textandtextfield.dart';
import 'package:expensesapproval/res/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class emp_Profile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _emp_Profile();
}
class _emp_Profile extends State<emp_Profile>{

  PickedFile _image;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: white,
          title: text("My Profile", black, FontWeight.bold),

          actions: <Widget>[
            IconButton(icon: Icon(Icons.notifications_none),color:black , onPressed: null)
          ],
        ),
        body:SafeArea(
            child:Container(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Center(
                        child:Stack(
                            children:[
                              Container(
                                height: 130,
                                width: 130,
//                padding: EdgeInsets.fromLTRB(70.0, 30.0, 80.0, 15.0),
                                child: Center(
                                  child: CircleAvatar(
                                    backgroundImage:_image== null ?NetworkImage('https://www.pinkvilla.com/files/styles/contentpreview/public/suriya_1.jpg?itok=PAyhlkot'):FileImage(File(_image.path)) ,
                                    radius: 60,
                                  ),
                                ),
                              ),
                              Positioned(
                                  bottom: 0,
                                  right: 0,
                                  child: Container(
                                    height: 45,
                                    width: 45,
                                    decoration: BoxDecoration(
                                        boxShadow: <BoxShadow>[ BoxShadow(
                                            color: Colors.black,
                                            blurRadius: 10.0,
                                            offset: Offset(0.0,0.0)
                                        ),],
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            width: 0,
                                            color: Theme.of(context).scaffoldBackgroundColor
                                        ),
                                        color: white
                                    ),
                                    child:Center(child: IconButton(icon:Icon(Icons.camera_alt), color: Colors.black,onPressed: showBottomSheet)),
                                  )
                              ),

                            ]
                        )
                    )
                  ]
              ),

            )
        ));
  }
}