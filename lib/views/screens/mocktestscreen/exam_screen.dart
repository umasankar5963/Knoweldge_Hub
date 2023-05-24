import 'package:flutter/material.dart';
import 'package:login/commons/colorutilts.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:login/commons/textstyle.dart';
import 'package:login/models/test_attempt_info.dart';
import '../../../models/exam_sections_model.dart';
import 'mock_test_instruction_screen.dart';
final instructionslngview=InstructionFirstPage();
class ExamStart extends StatefulWidget {
  const ExamStart({super.key});

  @override
  State<ExamStart> createState() => _ExamStartState();
}

class _ExamStartState extends State<ExamStart> {
  int index=0;
  bool onohever=false;
  bool ismouseohever =false;
  @override
  Widget build(BuildContext context) {
      //final double _width=MediaQuery.of(context).size.width;
     const double iconsize=40;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 30,
        elevation: 0,
        centerTitle: false,
        backgroundColor:const Color.fromARGB(221, 99, 94, 94),
        title:  const Text('I_cetMock Test',style: TextStyle(color:Colors.white,fontSize:15,),),
        actions: [
          const CircleAvatar(radius:10,backgroundColor: Colors.green,child:Icon(Icons.description,color: Colors.white,size: 10,)),
          TextButton(child: const Text('Question Paper',style: TextStyle(color: Colors.white,decoration:TextDecoration.underline),),
            onPressed: (){
            showDialog(context: context, builder: (BuildContext context)=>
            Dialog( child:QuestionsDailugeBox()),);
          }, ),
          const Icon(Icons.info,color: Colors.blue,),
          TextButton(child: const Text('Instructions',style: TextStyle(color: Colors.white,decoration:TextDecoration.underline),),
          onPressed: (){
            showDialog(context: context, builder: (BuildContext context)=>
            Dialog( child:InstructionDailugeBox()),);
                 },),
        ],
        ),
       body: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
           Expanded(
             child: SizedBox(
               height: double.infinity,
               width: 500,
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.end,
                 crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     Container(
                      height: 40,
                      color: ColorsUtil.containerBGColor,
                      child: Row(children: [
                       const Icon(Icons.arrow_left,size: iconsize,color:Colors.black38,),
                        Column(
                       mainAxisAlignment:MainAxisAlignment.center,
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                        Container(
                          padding: const EdgeInsets.only(left: 10),
                          height: 25,
                          decoration:const BoxDecoration(color: Colors.blue,borderRadius:BorderRadius.all(Radius.circular(2))),
                          child:Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                               Text('I_cet Mock ',style: TextStyle(color: Colors.white,fontSize: 15),),
                               Icon(Icons.info,color: Colors.white,size: 20,),]),),
                         ClipPath(
                          clipper: TriangleClipper(),
                          child: Container(
                          height: 8,
                          width: 8,
                          color: const Color.fromARGB(255, 47, 143, 221),
                         //child: Center(child: Text("TriangleClipper()")),
                         ),
                          ),],),
                           const Spacer(),
                           const Icon(Icons.arrow_right,size: iconsize,color:Colors.black38,),
                           IconButton(onPressed: (){}, icon:const Icon(Icons.zoom_in,size:30,)),
                           IconButton(onPressed: (){}, icon:const Icon(Icons.zoom_out,size:30,)),
                         ], ),),
                   SizedBox(
                    height: 27,
                       child: Row(
                         children: const [
                         SizedBox(width: 20),
                         Text('Section'),
                         Spacer(),
                         Text('Time Left :',style: TextStyle(fontSize: 15),),
                         SizedBox(width: 20),
                       ],),),
                  Container(
                    height: 40,
                    decoration: BoxDecoration(border: Border.all(color:Colors.black45)),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                    const Icon(Icons.arrow_left,size: iconsize,color:Colors.black54,),
                    Expanded(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                         _sections(0),
                          const VerticalDivider(),
                         _sections(1),
                          const VerticalDivider(),
                         _sections(2),
                         const VerticalDivider(), ]),),
                      ismouseohever?   SizedBox(height: 50,child:Text("Hello Uma Shankar")):SizedBox(),
                    const Icon(Icons.arrow_right,size: iconsize,color:Colors.black38,),], ),),
                    const Padding(
                     padding:EdgeInsets.only(top: 10,bottom: 10,left: 20),
                     child: Text('Question Type :MCQ',style: TextStyle(fontWeight: FontWeight.w800),),),
                   Container(
                    height: 50,
                    color: const Color.fromARGB(255, 17, 89, 149),
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                       //drop sown button remind
                    ],)),
                    //exam body
                   ExamBody(),
                   Container(
                    height: 50,
                    decoration: BoxDecoration(border: Border.all(color: Colors.black),),
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                       const SizedBox(width:50),
                       OnOhoverCustomWidget(text: 'Mark for Review & Next', onTap: (){},),
                       const SizedBox(width:10),
                       OnOhoverCustomWidget(text: 'Clear Response', onTap: (){},),
                       const Spacer(),
                       GestureDetector(
                        onTap:(){},
                        child:Container(
                          padding: const EdgeInsets.only(left:10,right:10),
                          height: 30,
                          color: Colors.blue[800],
                          child: const Center(child:Text('Save & Next',style:TextStyle(color: Colors.white,fontWeight: FontWeight.w800))),
                        )),
                        const SizedBox(width: 50,),
                      ],
                    )
                   ),
                   Container(
                    height: 15,
                    color:Colors.blueGrey[400],
                   ) ],),
             ),
           ),
            LeftSideOptions(),
            ],
          ),
    );
  }
  
  _sections(int index) {
    return InkWell(
       child: SizedBox(
         height: 50,
         child: Row(
          children:  [
           SizedBox(
            width:MediaQuery.of(context).size.width<1200?70:150,
            child: Text(sections[index].title,overflow:TextOverflow.ellipsis,)),
            //Icon(sections[index].icon,color: Colors.blue,),
            InkWell(
              onTap: (){},
              child:MouseRegion(
                onEnter: (_) {
                 ismouseohever=true;
                 setState(() {
                   
                 });
                },
                onExit: (_){
                  ismouseohever=false; setState(() {
                   
                 });
                },
                child:
                Icon(Icons.info,color:Colors.blue),
                 ),
            )
          ], ) ),
    );
  }
}

//  _instructionsDailugeBox(){
// return 
// }

 
class ExamBody extends StatefulWidget {
  const ExamBody({super.key});

  @override
  State<ExamBody> createState() => _ExamBodyState();
}

class _ExamBodyState extends State<ExamBody> {
  @override
  Widget build(BuildContext context) {
    final double _width=MediaQuery.of(context).size.width;
            return SizedBox(
               height: MediaQuery.of(context).size.height-290,
               //width: MediaQuery.of(context).size.width-320,
               width: MediaQuery.of(context).size.width-300,
               child: Column(children: [
                Container(
                  height: 30,
                  decoration: BoxDecoration(border: Border.all(color: Colors.black45)),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(width: 20,),
                      const Text('Question No :',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                      Text('1'),
                      const Spacer(),
                      GestureDetector(
                        onTap:(){},
                        child: const CircleAvatar(
                          backgroundColor:Color.fromARGB(255, 17, 89, 149),
                          radius: 18,
                          child:Icon(Icons.arrow_downward_rounded,color:Colors.white)),
                      ), ],) ),
                    //  Row(
                    //   children: [
                    //     Expanded(
                    //       child: Container(
                    //         height: 500,
                    //         width: 500,
                    //         decoration: BoxDecoration(border: Border.all(color: Colors.black45)),
                    //       ),
                    //     ),
                    //     Container(
                    //       decoration: BoxDecoration(border: Border.all(color: Colors.black45)),
                    //       width: 20,
                    //       //height: double.maxFinite,
                    //       child:   Scrollbar(
                    //       thumbVisibility: true,
                    //       trackVisibility: true,
                    //       radius: Radius.circular(5),
                    //       interactive: true,
                    //       child:Container(),
                    //     ),),
                    //   ],
                    //  )

               ],)
            );
  }
}


class OnOhoverCustomWidget extends StatefulWidget {
  final String text;
  final VoidCallback onTap;

  OnOhoverCustomWidget({required this.text, required this.onTap,});

  @override
  State<OnOhoverCustomWidget> createState() => _OnOhoverCustomWidgetState();
}

class _OnOhoverCustomWidgetState extends State<OnOhoverCustomWidget> {
    bool onoheverButton=false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: MouseRegion(
        onEnter: (_) {
            setState(() {
             onoheverButton=true;
                       });
        },
        onExit: (event) {
          setState(() {
            onoheverButton=false;
          });
        },
      
        child: Container(
          padding: const EdgeInsets.only(left:5,right: 5),
          height: 30,
          //width: 120,
          decoration: BoxDecoration(color:onoheverButton? Colors.blue:Colors.white,border: Border.all(color: Colors.black45),
          boxShadow: [onoheverButton?BoxShadow(blurRadius: 1,):BoxShadow()],
          ),
          child:Center(
                child: Text(
                  widget.text,
                  style:TextStyle(fontSize: 15.0,color: onoheverButton?Colors.white:Colors.black),
                ),
              ),
        ),
      ),
    );
  }
}




class LeftSideOptions extends StatefulWidget {
  const LeftSideOptions({super.key});

  @override
  State<LeftSideOptions> createState() => _LeftSideOptionsState();
}

class _LeftSideOptionsState extends State<LeftSideOptions> {
  @override
  Widget build(BuildContext context) {
    return  Container(
              height: MediaQuery.of(context).size.height,
              width: 300,
              decoration: BoxDecoration(border: Border.all(color: Colors.black45)),
              child:Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                  Container(height: 100,width: 100,
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(border: Border.all(color:Colors.black45)),
                  child:Image.network('assets/userprofile.png'),),
                  Padding(padding: const EdgeInsets.only(top:10),
                    child: Text('Uma Sankar',style:Style.headerTextStyle)),],),
                  Expanded(
                    child: Container(
                      width: 300,
                      decoration: BoxDecoration(border: Border.all(color: Colors.black,width: 2.0)),
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                        Container(
                          color: Colors.red,
                          
                          child: AnalyticalAbilityTAInfo()),
                      ],),
                     
                    ),
                  ),
                  Container(
                    height: 50,
                    color: const Color.fromARGB(255, 162, 192, 243),
                    child: Center(
                    child:GestureDetector(
                        onTap:(){},
                        child:Container(
                          padding: const EdgeInsets.only(left:10,right:10),
                          width: 90,
                          height: 30,
                          color: const Color.fromARGB(255, 16, 163, 236),
                          child: const Center(child:Text('Submit',style:TextStyle(color: Colors.white,fontWeight: FontWeight.w800))),
                        )),),),
                    Container(height: 15,color:Colors.blueGrey[400],)
              ],)
              
             );
  }
}
class InstructionDailugeBox extends StatefulWidget {
  const InstructionDailugeBox({super.key});

  @override
  State<InstructionDailugeBox> createState() => _InstructionDailugeBoxState();
}

class _InstructionDailugeBoxState extends State<InstructionDailugeBox> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        padding: const EdgeInsets.only(left: 10,right: 10),
        height: 30,
        color: Colors.blue[800],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
         Text('Instructions',style: TextStyle(color: Colors.white),),
         IconButton(onPressed: (){Navigator.of(context).pop();}, icon: Icon(Icons.close)),
        ]),),
        Row(children: [
         
        ],)
    ],);
  }
}


class QuestionsDailugeBox extends StatefulWidget {
  const QuestionsDailugeBox({super.key});

  @override
  State<QuestionsDailugeBox> createState() => _QuestionsDailugeBoxState();
}

class _QuestionsDailugeBoxState extends State<QuestionsDailugeBox> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        padding: const EdgeInsets.only(left: 10,right: 10),
        height: 30,
        color: Colors.blue[800],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Text('Question Paper',style: TextStyle(color: Colors.white),),
          IconButton(onPressed: (){Navigator.of(context).pop();}, icon:Icon(Icons.close)),
        ]),),
        Row(children: [
         
        ],),
        
    ],);
  }
}