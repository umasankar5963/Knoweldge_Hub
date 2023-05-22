import 'package:flutter/material.dart';
import 'package:login/commons/colorutilts.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

import '../../../models/exam_sections_model.dart';

class ExamStart extends StatefulWidget {
  const ExamStart({super.key});

  @override
  State<ExamStart> createState() => _ExamStartState();
}

class _ExamStartState extends State<ExamStart> {
  int index=0;
  @override
  Widget build(BuildContext context) {
      final double _width=MediaQuery.of(context).size.width;
     const double iconsize=40;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 30,
        elevation: 0,
        centerTitle: false,
        backgroundColor:const Color.fromARGB(221, 99, 94, 94),
        title:  const Text('I_cetMock Test',style: TextStyle(color:Colors.white,fontSize:15,),),),
       body: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
           Column(
             mainAxisAlignment: MainAxisAlignment.end,
             crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 Container(
                  width: _width/1.2,
                  height: 40,
                  color: ColorsUtil.containerBGColor,
                  child: Row(children: [
                   const Icon(Icons.arrow_left,size: iconsize,color:Colors.black38,),
                    Column(
                   mainAxisAlignment:MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                    Container(
                      height: 25,
                      decoration:const BoxDecoration(color: Colors.blue,borderRadius:BorderRadius.all(Radius.circular(2))),
                      child:Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                           Text('I_cet Mock ',style: TextStyle(color: Colors.white,fontSize: 15),),
                           Icon(Icons.info,color: Colors.white,size: 15,),]),),
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
                       const Icon(Icons.arrow_right,size: iconsize,),
                       IconButton(onPressed: (){}, icon:const Icon(Icons.zoom_in,size:30,)),
                       IconButton(onPressed: (){}, icon:const Icon(Icons.zoom_out,size:30,)),
                     ], ),),
               SizedBox(
                  width: _width/1.2,
                   child: Row(
                     children: const [
                     SizedBox(width: 20),
                     Text('Section'),
                     Spacer(),
                     Text('Time Left :',style: TextStyle(fontSize: 15),),
                     SizedBox(width: 20),
                   ],),),
              Container(
                width: _width/1.2,
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
                     _sections(index),
                      const VerticalDivider(),
                     _sections(index),
                      const VerticalDivider(),
                     _sections(index),
                     const VerticalDivider(), ]),),
                const Icon(Icons.arrow_right,size: iconsize,),], ),),
                const Padding(
                 padding:EdgeInsets.only(top: 10,bottom: 10,left: 20),
                 child: Text('Question Type :MCQ',style: TextStyle(fontWeight: FontWeight.w800),),),
               Container(
                height: 50,
                width: _width/1.2,
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
                width: _width/1.2,
                decoration: BoxDecoration(border: Border.all(color: Colors.black),),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                   OnOhoverCustomWidget(text: 'Mark for Review & Next', onPressed: (){})
                    
                  ],
                )
               ),
               Container(
                height: 15,
                width: _width/1.2,
                color:const Color.fromARGB(255, 3, 35, 25)
               ) ],),
             Expanded(
               child: Container(
                height: MediaQuery.of(context).size.height,
                width: 300,
                color: Colors.black,
               ),),
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
          width:MediaQuery.of(context).size.width<800?70:120,
            child: Text(sections[index].title,overflow:TextOverflow.ellipsis,)),
           Icon(sections[index].icon,color: Colors.blue,)
          ], ) ),
    );
  }
}


class ExamBody extends StatefulWidget {
  const ExamBody({super.key});

  @override
  State<ExamBody> createState() => _ExamBodyState();
}

class _ExamBodyState extends State<ExamBody> {
  List mainpagedata = [
    "https:images.pexels.com/photos/10026604/pexels-photo-10026604.png?auto=compress&cs=tinysrgb&w=1600&lazy=load",
    "https:images.pexels.com/photos/10026604/pexels-photo-10026604.png?auto=compress&cs=tinysrgb&w=1600&lazy=load",
  ];
  @override
  Widget build(BuildContext context) {
    final double _width=MediaQuery.of(context).size.width;
    return SizedBox(
               height: MediaQuery.of(context).size.height-290,
               width: MediaQuery.of(context).size.width-320,
               child: ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: mainpagedata.length,
              itemBuilder: (BuildContext context, int index) {
            return Image.network(
            mainpagedata[index],
            fit: BoxFit.cover,
            height: 800,
            width: 1100,
            // scale: 2.0,
            );
            },
             ),
            );
  }
}


class OnOhoverCustomWidget extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  OnOhoverCustomWidget({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 50,
        width: 120,
        decoration: BoxDecoration(color: Colors.blue,border: Border.all(color: Colors.black)),
        child:Center(
              child: Text(
                text,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            
        
      ),
    );
  }
}
