import 'dart:html';
import 'dart:ui';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

import 'package:login/views/widgets/appbar.dart';
import 'dart:convert';
import '../../commons/colorutilts.dart';
import '../../commons/textstyle.dart';
import '../screens/genralKnowledgeScreens/historyscreen.dart';



 String ?stringResponse;
 Map ?mapResponse;
 Map?dataResponse;
 List ?listResponse;
class GeneralKnowledgeDetails extends StatefulWidget {
  const GeneralKnowledgeDetails({super.key});

  @override
  State<GeneralKnowledgeDetails> createState() => _GeneralKnowledgeDetailsState();
}

class _GeneralKnowledgeDetailsState extends State<GeneralKnowledgeDetails> {

 final List<String> generalKnowledgeTypes = [
  'History',
  'Geography',
  'Science',
  'Politics',
  'Culture', 
  'Sports',
  'Current affairs',
  'Technology',
  'Economics',
  'Philosophy',
 ];

  
  Future apicall()async{
    http.Response response;
   response=await http.get(Uri.parse("https://reqres.in/api/users?page=2"));
   if(response.statusCode == 200){
    setState(() {
      //stringResponse=response.body;
      mapResponse=json.decode(response.body);
      listResponse=mapResponse!["data"];
    });
   }
  }
  @override
  void initState() {
   apicall();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: generalKnowledgeLogo(context),elevation: 0.0,backgroundColor: Colors.transparent,
        leading: IconButton(onPressed: (){ Navigator.pop(context); },tooltip: 'Back', icon: const Icon(Icons.arrow_back_ios,color: Colors.black,)),),
        body: Flex(direction: Axis.vertical,
       children: [
        generatedBlurBackgroundImage(),
       ],
       ),
    );
  }
  
 Widget generatedBlurBackgroundImage() {
  return Flexible(
child: Stack(fit: StackFit.expand,
  children:[
    Container(
      decoration:  BoxDecoration(
      gradient: LinearGradient(colors: [
          HexColor.colorConverter('#b0b7ff'),
          HexColor.colorConverter('#64bdf8'), 
          HexColor.colorConverter('#a7c4bf'), ],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight)),
     //I blured the parent container to blur background image, you can get rid of this part
     child:  Padding(
       padding:const EdgeInsets.only(top: 10) ,
       child: BackdropFilter(
            filter:ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
            child:  Container(
                //you can change opacity with color here(I used black) for background.
                decoration:  BoxDecoration(color: Colors.black.withOpacity(0.2)),
                child:rectangleShapeContainer(),
                )))
    ),
              ],
));
  }
  
  rectangleShapeContainer() {
    return SizedBox(
        child:ListView.builder(
            itemCount: generalKnowledgeTypes.length,
            itemBuilder: (context,index){
          return Column(
           mainAxisAlignment: MainAxisAlignment.center ,
           children: [
            ListTile(
             title:Text(generalKnowledgeTypes[index],
             style: Style.drawerTextStyle),
             trailing:const Icon(Icons.arrow_forward_ios_rounded),
             onTap: (){
              Navigator.push(context,MaterialPageRoute( builder: (context) => _buildGenralKnoweledgeScreens(index)) );
             },
             ),
           Container(
            padding:const EdgeInsets.only(left: 15, right: 15),
             child:const Divider(color: Colors.white,  )),
           ],);
          }
          ),
    );
  }
  
  Widget _buildGenralKnoweledgeScreens(int index) {
  switch (index) {
       case 0:
        return HistoryScreen();
      // case 1:
      //   return GeographyScreen();
      // case 2:
      //   return ScienceScreen();
      // case 3:
      //    return PoliticsScreen();
      // case 4:
      //    return CultureScreen();
      // case 5:
      //    return SportsScreen();
      // case 6:
      //    return CurrentAffairsScreen();
      // case 7:
      //    return TechnologyScreen();
      // case 8:
      //    return TechnologyScreen();
      // case 9:
      //    return EconomicsScreen();
      // case 10:
      //    return PhilosophyScreen();
      default:
        return Container();
    }

  }
  // 'History',
  // 'Geography',
  // 'Science',
  // 'Politics',
  // 'Culture',
  // 'Sports',
  // 'Current affairs',
  // 'Technology',
  // 'Economics',
  // 'Philosophy',
  
//   rectangleShapeContainer() {
//   //  return Container(height: 500,width:500,color:colo,child:
//   //  listResponse==null?Text("data is loading..."):
//   //  Text(listResponse![0]['first_name'].toString()));
//  return ListView.builder(
//   itemCount: listResponse==null ? 0:listResponse!.length,
//   itemBuilder:(context,  BuildContext) {
//   return Column(
//    children: [
//    ListTile(
//      title: listResponse==null?const Text("data is loading..."): Text(listResponse![1]['first_name'].toString(), 
//      style: Style.commonTextStyle),),
//     Container(
//      padding: const EdgeInsets.only(left: 15, right: 15),
//      child: const Divider(color: Colors.white,  )),
//   ],
//   );
//   });
//   }
// }



}

class PhilosophyScreen extends StatefulWidget {
  const PhilosophyScreen({super.key});

  @override
  State<PhilosophyScreen> createState() => _PhilosophyScreenState();
}

class _PhilosophyScreenState extends State<PhilosophyScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(),
        body:Container(child:Center(child: Text("data"))),
      ),
    );
  }
}

class EconomicsScreen {
}

class TechnologyScreen {
}

class CurrentAffairsScreen {
}

class SportsScreen {
}

class CultureScreen {
}

class PoliticsScreen {
}

class ScienceScreen {
}

class GeographyScreen {
}


