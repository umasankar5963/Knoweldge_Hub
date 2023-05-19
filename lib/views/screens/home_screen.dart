

import 'package:flutter/material.dart';
import 'package:login/views/Categories/analyticalabilityCategoery.dart';
import 'package:login/views/Categories/communicationAbility.dart';
import 'package:login/views/Categories/mathematicalAbilityCategoery.dart';
import 'package:login/views/Categories/mockTestsCategoery.dart';
import 'package:login/views/Categories/genralknowledgecategoery.dart';
import 'package:login/views/screens/responsive_images.dart';
import 'package:login/commons/colorutilts.dart';
import 'package:login/commons/textstyle.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
     final currentWidth=MediaQuery.of(context).size.width;
    return Scaffold(
     backgroundColor: currentWidth<640?ColorsUtil.mobileViewBGColor:ColorsUtil.webViewBGColor,
     body: ListView(children: [
      // Content Of responsive Carousel images
        DestinationCarousel(),
       // content of catagories
      getListItems( const AssetImage('assets/testCatageries/images.png'), 'General Knowledge' ,ColorsUtil.basicCategoeryBGColor,(){
        Navigator.push(context, MaterialPageRoute(builder: (context) => GeneralKnowledgeDetails(),));
      }),
      getListItems( const AssetImage('assets/testCatageries/anylaticalskillsa.png'), 'Analytical Ability ' ,ColorsUtil.advancedCategoeryBGColor,(){
        Navigator.push(context, MaterialPageRoute(builder: (context) => AnalyticalAbilityDetails(),));
      }),
      getListItems( const AssetImage('assets/testCatageries/maths.png'), 'Mathematical Ability',ColorsUtil.opinionCategoeryBGColor,(){
        Navigator.push(context, MaterialPageRoute(builder: (context) => MathematicalAbilityDetails(),));
      }),
      getListItems(const AssetImage('assets/testCatageries/comication.png'),  'Communication Ability',ColorsUtil.performanceCategoeryBGColor,(){
        Navigator.push(context, MaterialPageRoute(builder: (context) => CommunicationAbilityDetails(),));
      }),
      getListItems(const AssetImage('assets/testCatageries/mocktest.jpeg'), 'Mock Tests ',ColorsUtil.feedbackCategoeryBGColor,(){
        Navigator.push(context, MaterialPageRoute(builder: (context) => MockTestsDetails(),));
      })]),
      );
  }

       ///Lis-t of interview questions.
       getListItems(AssetImage assets, String title, color,Function() onTap ) {
       return GestureDetector(
        // key: title == 'Basic' ? Key('item') : null
         onTap: onTap,
         child: Container(
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: color),
          height: 250.0,
          child: Center(
              child: Column(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,               
               children: <Widget>[
                //Container(height:200,width:200,decoration: BoxDecoration(shape:BoxShape.circle,image: DecorationImage(image:assets,fit: BoxFit.cover),)),
                CircleAvatar(radius: 65,foregroundImage: assets),
                Text(title,style: Style.headerstyle),
            ],)),
            ));
            }
}


