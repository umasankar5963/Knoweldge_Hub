import 'package:flutter/material.dart';
import 'package:login/commons/textstyle.dart';

import 'package:login/views/screens/home_screen.dart';
import 'package:login/views/widgets/appbar.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
 
final GlobalKey<SideMenuState> _sideMenuKey = GlobalKey<SideMenuState>();
  

 
  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).size.width<800?
    SideMenu(
     key: _sideMenuKey,
     background:Colors.teal[100],
     menu:buildMenu(),
     type: SideMenuType.shrinkNSlide,
      child: Scaffold(
        
        appBar: AppBar(
        title: appLogo(context),elevation: 0.0,backgroundColor: Colors.transparent,
          
          leading:GestureDetector(
            child:const Icon(Icons.sort,size: 40,color: Colors.black,),
            onTap: (){
              final _state = _sideMenuKey.currentState!;
              if (_state.isOpened) {
                _state.closeSideMenu();
              } else {
                _state.openSideMenu();
              }
            }         
             ),
             ),
        body: Row(
         children: [
         Expanded(child: HomeScreen()),
          ],
        ),
      ),
    ):Scaffold(
        appBar: AppBar(
        title: appLogo(context),elevation: 0.0,backgroundColor: Colors.transparent,
          leading:GestureDetector(
            child:const Icon(Icons.sort,size: 40,color: Colors.black,),
            onTap: (){})),
        body: Row(
         children: [
         Expanded(child: HomeScreen()),
          ],
        ),
      );
  }
  
 buildMenu() {
    return SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ListTile(
              title: const Text('Share the App', style: Style.drawerTextStyle),
              leading: const Icon(Icons.share, color: Colors.white),
              onTap: () => _sharer(),
            ),
            ListTile(
              title: const Text('Suggestions', style: Style.drawerTextStyle),
              leading: const Icon(Icons.bug_report, color: Colors.white),
              onTap: () => _launchgmail(),
            ),
          ],
        ));
  }

  _sharer() {
  
   }

  _launchgmail() async {
   
  }
}




