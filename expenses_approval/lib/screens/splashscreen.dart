

import 'package:expensesapproval/res/colors.dart';
import 'package:flutter/material.dart';

class splashScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: new BoxDecoration(
          gradient: new LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            colors: [
              splashbgcolor1,
              splashbgcolor2,
              
            ]
          )
        ),
      ),
    );
  }

}