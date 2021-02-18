import 'package:expensesapproval/res/colors.dart';
import 'package:expensesapproval/screens/approvedplan.dart';
import 'package:flutter/material.dart';

class homePage extends StatefulWidget{
  @override
  homePageState createState()=>new homePageState();

}

class homePageState extends State<homePage>with TickerProviderStateMixin  {
  int _currentindex=0;

  TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    tabController = TabController(vsync: this, length: 2);

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      //App Bar
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: white,
        title: new Text("Home", style: TextStyle(fontFamily: 'worksans', color: black, fontSize: 16,fontWeight: FontWeight.w600,),textAlign: TextAlign.center,),
        leading: new Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            radius: 2,
          )
        ),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.notifications_none),color:black , onPressed: null)
          ],

        bottom: TabBar(labelPadding: EdgeInsets.only(top: 5.0),
          tabs: [
            Tab(child:Text("Approved Plan", style: TextStyle(fontFamily: 'worksans', color: theme, fontSize: 16,fontWeight: FontWeight.w600,),textAlign: TextAlign.center,) ,),
            Tab(child:Text("Pending Plan", style: TextStyle(fontFamily: 'worksans', color: unselectedicon, fontSize: 16,fontWeight: FontWeight.w600,),textAlign: TextAlign.center,) ,)
          ],indicatorColor: theme,
          controller: tabController,
        ),
      ),
      //Body of the home page
      body: TabBarView(
        controller: tabController,
        children: [
          approvedPlan(),
          Text("Pending approval screen"),
        ],
      ),
      //Bottom Navigation bar
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentindex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,color: theme,),
          title: Text("Home", style: TextStyle(fontFamily: 'worksans',  fontSize: 10,color:theme,fontWeight: FontWeight.w600,)),
      backgroundColor: white,),
          BottomNavigationBarItem(icon: Icon(Icons.history,color: unselectedicon,),
            title: Text("History", style: TextStyle(fontFamily: 'worksans',  fontSize: 10,color: unselectedicon,fontWeight: FontWeight.w600,)),
            backgroundColor: white,),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline,color: unselectedicon,),
            title: Text("Profile", style: TextStyle(fontFamily: 'worksans',color: unselectedicon,  fontSize: 10,fontWeight: FontWeight.w600,)),
            backgroundColor: white,),
          BottomNavigationBarItem(icon: Icon(Icons.settings,color: unselectedicon,),
            title: Text("Settings", style: TextStyle(fontFamily: 'worksans',color: unselectedicon,  fontSize: 10,fontWeight: FontWeight.w600,)),
            backgroundColor: white,)
        ],
        onTap: (index) {
          setState(() {
            _currentindex=index;
          });
        },
      ),
    );
  }
}
