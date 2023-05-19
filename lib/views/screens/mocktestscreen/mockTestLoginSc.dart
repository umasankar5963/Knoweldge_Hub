import 'package:flutter/material.dart';
import 'package:login/commons/textstyle.dart';
import 'mock_test_instruction_screen.dart';

class MockTestLoginScrn extends StatefulWidget {
  const MockTestLoginScrn({super.key});

  @override
  State<MockTestLoginScrn> createState() => _MockTestLoginScrnState();
}

class _MockTestLoginScrnState extends State<MockTestLoginScrn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.indigo[900],),
        body:SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            Flexible(
              child:Container(
                height: 150,
                color: const  Color.fromARGB(221, 94, 90, 90),
              )),
              const SizedBox(height:40),
            Container(height: 50,
              decoration: const BoxDecoration(
                color:  Color.fromARGB(255, 217, 210, 210),
                borderRadius:BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10))),
                width:400,
                  child: Center(child:Text("Login",style:Style.headerTextStyle,)),),
          
            Container(
               padding:  const EdgeInsets.symmetric(horizontal: 40,vertical:20 ),
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 238, 231, 231),
                borderRadius:BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10))),
                width:400,
             child:Column(children: [
              Container(
                decoration: BoxDecoration(
                  border:Border.all(color: Colors.black38),
                ),
                height: 40,
                child:Row(children:const [
                 Icon(Icons.person,size:25),
                 VerticalDivider(),
                 Expanded(child: TextField(readOnly: true,decoration: InputDecoration(hintText: 'User Name',border: InputBorder.none),)),
                 VerticalDivider(),
                 Icon(Icons.keyboard_alt_outlined,size: 25,),
                  ],)),
              const SizedBox(height: 20,),
              Container(
                decoration: BoxDecoration(
                  border:Border.all(color: Colors.black38),
                ),
                height: 40,
                child:Row(children: const[
                 Icon(Icons.lock_rounded,size:25),
                 VerticalDivider(),
                 Expanded(child: TextField(readOnly: true,decoration: InputDecoration(hintText: '.....',border:InputBorder.none,),)),
                 VerticalDivider(),
                 Icon(Icons.keyboard_alt_outlined,size: 25,),
                  ],),),
                const SizedBox(height: 40,),
                GestureDetector(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> InstructionFirstPage())),
                  child: Container(
                    height:50,
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child:const Center(child: Text('Sign In',style: TextStyle(fontWeight: FontWeight.w800,color: Colors.white),))
                  ),
                ),
                const SizedBox(height: 10,),
                ],),
                
              )
            ],
          ),
        ),
        
    );
  }
}