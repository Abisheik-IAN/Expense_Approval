
import 'package:expensesapproval/components/Button.dart';
import 'package:expensesapproval/res/colors.dart';
import 'package:flutter/material.dart';

class approvedPlan extends StatefulWidget{
  @override
  approvedPlanState createState() => approvedPlanState();
  
}

class approvedPlanState extends State<approvedPlan> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15.0,right: 15.0,top: 20.0,bottom: 10.0),
      color: white,
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text("Today", style: TextStyle(fontFamily: 'worksans', color: theme, fontSize: 16,fontWeight: FontWeight.w600,),),
          SizedBox(height:20.0),
          Expanded(
              child: SizedBox(
                  height: 200.0,width:400.0,
                  child:ListView.builder(

                    itemBuilder:(context,index){
                      return Column(

                        children: <Widget>[
                          SizedBox(width: 15.0,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              CircleAvatar(radius: 25,),
                              SizedBox(width: 20.0,),
                              Column(
                                children: <Widget>[
                                  Text("Meeting with marketing team   >", style: TextStyle(fontFamily: 'worksans', color: theme, fontSize: 16,fontWeight: FontWeight.w600,),),
                                  SizedBox(height:5.0),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Icon(Icons.calendar_today),
                                      Text(" 1 day |",style: TextStyle(fontFamily: 'worksans', color: subtxtlite, fontSize: 12,fontWeight: FontWeight.w600,)),
                                      Icon(Icons.location_on_outlined),
                                      Text(" Chennai",style: TextStyle(fontFamily: 'worksans', color: subtxtlite, fontSize: 12,fontWeight: FontWeight.w600,))
                                    ],
                                  ),
                                  SizedBox(height: 5.0,),
                                  CustomButtom("Start trip  >>",235.0 , 40.0, null, theme, white),
                                  SizedBox(height: 15.0,)
                                ],
                              ),

                            ],
                          ),

                        ],
                      );
                    },
                    itemCount: 10,
                  ))),

        ],
      ) ,
    );
  }
  
}