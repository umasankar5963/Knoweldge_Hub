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
  ScrollController _controller=ScrollController();
 
  @override
  Widget build(BuildContext context) {
     final double _width=MediaQuery.of(context).size.width;
    const double iconsize=40;
    return Scaffold(
      body: Column(
        children: [
          Container(
          width: _width,
          height:30,
          color: Color.fromARGB(221, 99, 94, 94),
          child: Row(
            children: const[
              SizedBox(width: 20,),
              Text('I_cetMock Test',style: TextStyle(color:Colors.white,fontSize:18),),
              Spacer(),
              
            ],
          )
          ),
          Container(height: 40,
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
              color: Color.fromARGB(255, 47, 143, 221),
              //child: Center(child: Text("TriangleClipper()")),
            ),
          ),],),
                   const Spacer(),
                   const Icon(Icons.arrow_right,size: iconsize,),
                   IconButton(onPressed: (){}, icon:const Icon(Icons.zoom_in,size:30,)),
                   IconButton(onPressed: (){}, icon:const Icon(Icons.zoom_out,size:30,)),
          ], ),),
          Row(
            children: const [
               SizedBox(width: 20),
              Text('Section'),
               Spacer(),
              Text('Time Left :',style: TextStyle(fontSize: 15),),
              SizedBox(width: 20),
            ],), 
              
          Container(
            width: MediaQuery.of(context).size.width,
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
                     const VerticalDivider(),
                     
                    
                    ],
                  ),
                ),
                const Icon(Icons.arrow_right,size: iconsize,),
              ],
            ),
          ),
            //right options
            Container(
          height: MediaQuery.of(context).size.height,
          width: 500,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black)),
            ),
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
                          width:MediaQuery.of(context).size.width<600?70:120,
                          child: Text(sections[index].title,overflow:TextOverflow.ellipsis,)),
                        Icon(sections[index].icon,color: Colors.blue,)
                      ],
                    ) ,
                  ),
                );
  }
}