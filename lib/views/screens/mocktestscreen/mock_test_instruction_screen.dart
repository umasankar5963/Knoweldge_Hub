
import 'package:flutter/material.dart';
import 'package:login/views/screens/mocktestscreen/exam_screen.dart';
import 'package:provider/provider.dart';


class  InstructionsLanguage extends ChangeNotifier{
   String _selectedLanguage ='English';
   String  _imagePathScreen1="assets/examInstructions/instructions1.png"; 
   String  _imagePathScreen2='assets/examInstructions/instructions3.png';  
String get selectedLanguage =>_selectedLanguage;
  
  
  void setSelectionLanguage(String language){
    
   _selectedLanguage=language;
       if (language == 'English') {
      _imagePathScreen1 = 'assets/examInstructions/instructions1.png';
      _imagePathScreen2 = 'assets/examInstructions/instructions3.png';
    } else if (language == 'Telugu') {
      _imagePathScreen1 = 'assets/examInstructions/instructionspg1Telugu.png';
      _imagePathScreen2 = 'assets/examInstructions/InstructionsTelugu.png';
    }
   notifyListeners();
  }
}




class InstructionFirstPage extends StatefulWidget {
  const InstructionFirstPage({super.key});

  @override
  State<InstructionFirstPage> createState() => _InstructionFirstPageState();
}
class _InstructionFirstPageState extends State<InstructionFirstPage> {
  int value=0;
  int? hoveredIndex;
 
  @override
  Widget build(BuildContext context) {
      final language = Provider.of<InstructionsLanguage>(context);
      double height=MediaQuery.of(context).size.height;
      double width=MediaQuery.of(context).size.width;
     
    return Scaffold(
      backgroundColor: Colors.indigo[900],
     body:Container(
      color:Colors.white,
      margin: const EdgeInsets.only(top: 30,left:3,right:3,bottom: 3),
      child:Column(
        children: [
           Container(
                width: width,
                height: 40,
                color:Colors.blue[200],
            child:const Padding(
                  padding: EdgeInsets.only(left:20),
                  child: Text(
                    
                    'Instructions',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),)),),
                  Padding(
       padding: const EdgeInsets.only(top: 8),
       child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
          const Text('View in :',style:TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
          Container(
            width:90,
            height: 30,
             margin: const EdgeInsets.only(right:60,left: 10),
             padding: const EdgeInsets.only(left:2,right: 2),
            decoration: BoxDecoration(border: Border.all(color: Colors.black)),
            child: DropdownButtonHideUnderline(
              child:DropdownButton<String>(
                borderRadius: const BorderRadius.all(Radius.circular(5)),
                value: language.selectedLanguage,
                onChanged: (newValue){
                  language.setSelectionLanguage(newValue!);
                },
                  items: <String>['English','Telugu'].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                    alignment: Alignment.center,
                    value: value,
                    child: Row(
                      children: [
                       Text(value),
                      ],),
                  ); 
                }).toList(),
              ),
            ),
          ),
        ],
        ),
        ), 
        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: SizedBox(
                width:MediaQuery.of(context).size.width,
                child:Column(
                children:[
              if (language.selectedLanguage=='English') Image.asset(language._imagePathScreen1),
              if (language.selectedLanguage=='English') Image.asset('assets/examInstructions/instructions2.png'),
              if (language.selectedLanguage=='Telugu') Image.asset(language._imagePathScreen1),
              if (language.selectedLanguage=='Telugu') Image.asset('assets/examInstructions/instructionspg2Telugu.png'),
                ]),
              ),
            ),
          ),
        ), 
                
                  const Divider(thickness: 0.5,),
           SizedBox(
                 height: 70,
                 width: width,
            child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
              GestureDetector(
                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>InstructionsSecondPage()));},
                child: MouseRegion(
                 onEnter: (_) {
                      setState(() {
                        hoveredIndex=value;
                      });
                    },
                    onExit: (_) {
                      setState(() {
                        hoveredIndex=null;
                      });
                    },
                  child: Container(height: 30,width: 80,
                      margin: const EdgeInsets.only(right: 70),
                      decoration: BoxDecoration(
                          color: hoveredIndex == value ? Colors.blue : null,
                        border: Border.all(color: Colors.black,)),
                    child:Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [Text("Next",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: hoveredIndex!=null?Colors.white:Colors.black),), Icon(Icons.arrow_forward_ios_rounded,size: 15,color: hoveredIndex!=null?Colors.white:Colors.black,),],),),
                ),
           ),],),
           ),
          ],),
      ),
    );
  }
}

class InstructionsSecondPage extends StatefulWidget {
  const InstructionsSecondPage({super.key});

  @override
  State<InstructionsSecondPage> createState() => _InstructionsSecondPageState();
}

class _InstructionsSecondPageState extends State<InstructionsSecondPage> {
  bool  isDropdownOpen=false;
  bool  select=false;
  String? dropdowndefaltValue;
  String alertText='Please select default language to proceed further ';
 final List <String>_languages=[
  "--select--",
  "Telugu",
  "English",
 ];
  var value=0;
  int? onhoveredIndex;
  int? testButtonOnohever;
  void _handleOptionsChaanged(String? newvalue){
  setState(() {
    dropdowndefaltValue=newvalue!;
    
  });
  }
   void _navigateToNextPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ExamStart()),
    );
   }
  @override
  Widget build(BuildContext context) {
   final language=Provider.of<InstructionsLanguage>(context);
   double width=MediaQuery.of(context).size.width;
 return Scaffold(
       backgroundColor: Colors.indigo[900],
   body:Container(
      color:Colors.white,
      margin: const EdgeInsets.only(top: 30,left:3,right:3,bottom: 3),
     child:Column(
          children: [
           Container(
                width: width,
                height: 40,
                color:Colors.blue[200],
                child:const Padding(
                  padding: EdgeInsets.only(left:20),
                  child: Text('Other Important Instructions',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),),
             Padding(
                    padding: const EdgeInsets.only(top: 8),
               child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                     const Text('View in :',style:TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
                 Container(
                     width:90,
                     height: 30,
                     margin: const EdgeInsets.only(right:60,left: 10),
                     padding: const EdgeInsets.only(left:2,right: 2),
                     decoration: BoxDecoration(border: Border.all(color: Colors.black)),
                    child: DropdownButtonHideUnderline(
                     child:DropdownButton<String>(
                       isDense: true,
                       borderRadius: const BorderRadius.all(Radius.circular(5)),
                        value: language.selectedLanguage,
                         onChanged: (newValue){
                          language.setSelectionLanguage(newValue!);},
                       items:<String>['English','Telugu'].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                         alignment: Alignment.center,
                         value: value,
                         child: Text(value),
                  ); 
                }).toList(),
                 ),),),],),),
                 //instructions
                 Expanded(
                  child: SingleChildScrollView(
                   child: SizedBox(
                    width:MediaQuery.of(context).size.width,
                    child: Image.asset(language._imagePathScreen2)))),  
                  const Divider(thickness: 0.5,),
          SingleChildScrollView(
            padding: const EdgeInsets.only(left:10,right: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               Row(children: [
                const Text("Choose default language:",style: TextStyle(fontWeight: FontWeight.w700),),
                DropdownButton(
                 elevation: 9,
                 hint: const Text('--select--'),
                 onChanged: _handleOptionsChaanged,
                 value: dropdowndefaltValue,
                 borderRadius: const BorderRadius.all(Radius.circular(10)),
                  items: _languages.map((String language) {
              return DropdownMenuItem(
                   value: language,
                   child: Padding(
                     padding:  const EdgeInsets.only(left:3),
                     child: Row(
                       children: [
                         Text(language),],),),);
               }).toList(),     
                )],),
            
               const Text('Please note all questions will appear in your default language can be change on particular question later on ',style: TextStyle(color:Colors.red),),
               const Padding(padding: EdgeInsets.only(top: 20)),
               Row(children: [
                 Checkbox(
                 value:select,
                 onChanged:(bool?value){
                   setState(() {
                     select=value!;
                     if(value){
                     // alertText='Please accept terms and conditions before proceedings';
                       alertText='Please select default language to proceed further';
                     }else{
                       //alertText='Please select default language to proceed further';
                      alertText='Please accept terms and conditions before proceedings';
                     }
                   });  
                 },checkColor: Colors.white,activeColor: Colors.blue,),
                 const Flexible(child: Text('i have read and understood the instructions.All computer hardware allotted to me are in proper working condition.i declare that iam not in possession of/not wearing/not carring any prophibited gadget like mobile phone ,bluetooth devices etc./any prophibited material with me into the examination hall.i agree that in case of not adherinng to the instructions,i shall beilable to be debbared from this test/and or to disclipnary action,which may include ban from future Tests/Examinations')),
               ],),
               const Padding(padding: EdgeInsets.only(top: 20)),
                Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                   InkWell(
                         onTap: (){Navigator.pop(context,);},
                    child: MouseRegion(
                       onEnter: (_){
                        setState(() {
                          onhoveredIndex=value;
                        });
                       },
                       onExit: (_){
                        setState(() {
                          onhoveredIndex=null;
                        });
                       },
                    
                      child: Container(height: 30,width: 80,
                           margin: const EdgeInsets.only(left:70),                      
                           decoration: BoxDecoration(border: Border.all(color: Colors.black),
                           color: onhoveredIndex != null?Colors.blue:null,),
                        child:Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                           children: [
                             Icon(Icons.arrow_back_ios_rounded,size: 15,color: onhoveredIndex!=null?Colors.white:Colors.black,),
                             Text("Previous",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15,color:onhoveredIndex!=null?Colors.white:Colors.black))],)),
                    ),),
            
                  InkWell(
                      onTap: (){
                       if (dropdowndefaltValue!= null && select) {
                   _navigateToNextPage();
                   } else {
                   alertdailugeBox(context);
                   }
                      },
                    child: MouseRegion(
                      onEnter: (_){
                       setState(() {
                        testButtonOnohever=value;
                       });
                      },
                      onExit: (event) {
                        setState(() {
                          testButtonOnohever=null;
                        });
                      },
                      child: Container(height: 30,
                           margin: const EdgeInsets.only(right: 70),
                           decoration: BoxDecoration(border: Border.all(color: Colors.black),color: testButtonOnohever != null?Colors.blue:Colors.blue[200],
                           
                           ),
                        child:Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                           children: [
                             Padding(
                               padding: const EdgeInsets.all(5),
                               child: Center(child: Text("I am ready to begin",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10,color:testButtonOnohever!=null? Colors.white:Colors.black),))),
                         ])),
                    )),
                //   OnOhoverCustomWidget( 
                //   onTap: (){
                //        if (dropdowndefaltValue!= null && select) {
                //    _navigateToNextPage();
                //    } else {
                //    alertdailugeBox(context);
                //    }
                //       },
                //  text: "I am ready to begin",
                //  style:const TextStyle(fontWeight: FontWeight.bold,fontSize: 10,color: Colors.white)),

                   const SizedBox(),
                      ],), 
                const SizedBox(height: 40,)
              ],
            ),
          ),
          ],),
      ),
    );
  }
  
  alertdailugeBox(BuildContext context) {
  return showDialog(
      barrierDismissible: false,
      context: context, builder: (context,) =>
      Align(alignment: Alignment.center,
     child:Material(
       child:Container(
        decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5))),
        height: 100,width: 400,
        child: Column(
          children: [
            Container(
              height: 30,
             margin: const EdgeInsets.only(bottom: 5),
              color: const Color.fromARGB(255, 7, 97, 170),
              child:Padding(
                padding: const EdgeInsets.only(left:8,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  const Text("Info",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                  IconButton(
                    color: Colors.white,
                    padding: const EdgeInsets.only(bottom: 3),
                    onPressed: (){Navigator.pop(context);}, icon: const Icon(Icons.close_rounded,),tooltip: 'Close',),
                ],),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(radius: 10,child: Image.asset(('assets/examInstructions/info.jpg'))),
                 Text(alertText,style: const TextStyle(fontWeight: FontWeight.w500,color: Colors.black),),             
              ],
            ),
            const Padding(padding: EdgeInsets.only(top:5)),
            Expanded(
              child: Container(
                decoration:  BoxDecoration( color:Colors.red[50],borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(5),bottomRight: Radius.circular(5))),
               
                child: Center(child:TextButton(onPressed: (){Navigator.pop(context,);},
                style: ButtonStyle(
                  backgroundColor:MaterialStateProperty.all(const Color.fromARGB(255, 85, 153, 87))), child:  const Text("Ok",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),))),
              ),
            )
          ],
        ),
       ),
     ),
     )
    );
  }
}


