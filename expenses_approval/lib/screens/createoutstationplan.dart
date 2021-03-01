import 'package:expensesapproval/components/Button.dart';
import 'package:expensesapproval/components/textandtextfield.dart';
import 'package:expensesapproval/res/colors.dart';
import 'package:flutter/material.dart';

class createOutstaionPlan extends StatefulWidget{
  @override
  createOutstaionPlanState  createState() => createOutstaionPlanState();

}
class Item {
  const Item(this.name,this.icon);
  final String name;
  final Icon icon;
}

class createOutstaionPlanState extends State<createOutstaionPlan> {
  TextEditingController dateCtl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var padding = MediaQuery.of(context).padding;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    print( height - padding.top - padding.bottom);
    print( width - padding.right - padding.left);
    print(MediaQuery.of(context).size.width);
    print(MediaQuery.of(context).size.height);
//    List<String> _locations = ['A', 'B', 'C', 'D'];
    String _selectedLocation = 'Please choose a location';
    List users = [const Item('select the mode of transport',null),
      const  Item('Two wheeler', Icon(Icons.bike_scooter_outlined)),
      const  Item('Car rental', Icon(Icons.car_rental)),
      const  Item('Train', Icon(Icons.train))];
    return Scaffold(
        appBar: AppBar(
          backgroundColor: white,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: text("Create Local Plan", black, FontWeight.bold),
          centerTitle: true,
        ),
        body: SafeArea(
            child:SingleChildScrollView(
              child:Container(
                color: white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Container(
                        padding: EdgeInsets.only(top:15.0,bottom: 5.0,left:15.0,),
                        child:text("Title",  theme, FontWeight.w600)
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 5.0,left:15.0,right: 15.0),
                      child: Container(child:TextField(decoration:textField("title",txtfield))),
                    ),
                    Container(
                        padding: EdgeInsets.only(bottom: 5.0,left:15.0),
                        child:text("From",  theme, FontWeight.w600)
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 5.0,left:15.0,right: 15.0),
                      child: TextFormField(
                        controller: dateCtl,
                        decoration: textField("Start Date", txtfield),
                        onTap: () async{
                          DateTime date = DateTime(1900);
                          FocusScope.of(context).requestFocus(new FocusNode());
                          date = await showDatePicker(
                              context: context,
                              initialDate:DateTime.now(),
                              firstDate:DateTime(1900),
                              lastDate: DateTime(2100));

                          dateCtl.text = date.toString();},),
                    ),
                    Container(
                        padding: EdgeInsets.only(bottom: 5.0,left:15.0),
                        child:text("To",  theme, FontWeight.w600)
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 5.0,left:15.0,right: 15.0),
                      child: TextFormField(
                        controller: dateCtl,
                        decoration: textField("End Date", txtfield),
                        onTap: () async{
                          DateTime date = DateTime(1900);
                          FocusScope.of(context).requestFocus(new FocusNode());
                          date = await showDatePicker(
                              context: context,
                              initialDate:DateTime.now(),
                              firstDate:DateTime(1900),
                              lastDate: DateTime(2100));

                          dateCtl.text = date.toString();},),
                    ),
                    Container(
                        padding: EdgeInsets.only(top:15.0,bottom: 5.0,left:15.0,),
                        child:text("Purpose",  theme, FontWeight.w600)
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 5.0,left:15.0,right: 15.0),
                      child: Container(child:TextField(decoration:textField("title",txtfield))),
                    ),
                    Container(
                        padding: EdgeInsets.only(top:15.0,bottom: 5.0,left:15.0,),
                        child:text("Mode of Transport",  theme, FontWeight.w600)
                    ),
//              DropdownButton(
//                items: users.map((Item user) {
//                  return DropdownMenuItem(
//                    value: user,
//                    child: Row(
//                      children: [
//                        user.icon,
//                        SizedBox(width: 10,),
//                        Text(
//                          user.name,
//                          style:  TextStyle(color: Colors.red),
//                        ),
//                      ],
//                    ),
//                  );
//                }).toList(),
//                onChanged: (value) {
//                  setState(() {
//                    value;
//                  });
//                },
//              ),
                    Container(
                        padding: EdgeInsets.only(top:15.0,bottom: 5.0,left:15.0,),
                        child:text("Destination",  theme, FontWeight.w600)
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 5.0,left:15.0,right: 15.0),
                      child: Container(child:TextField(decoration:textField("your destination",txtfield))),
                    ),
                    Container(
                      padding: EdgeInsets.only(top:15.0,bottom: 5.0,left:15.0,right: 15.0),
                      child: CustomButtom("Submit",355.0,55.0,null,theme,white),
                    ),

                  ],
                ),
              ),
            )
        )


    );
  }

}