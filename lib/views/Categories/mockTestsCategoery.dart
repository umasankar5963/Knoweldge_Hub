
import 'package:flutter/material.dart';
import '../screens/mocktestscreen/mockTestLoginSc.dart';
import '../screens/mocktestscreen/mock_test_instruction_screen.dart';
import '../widgets/appbar.dart';

class MockTestsDetails extends StatefulWidget {
  const MockTestsDetails({super.key});

  @override
  State<MockTestsDetails> createState() => _MockTestsDetailsState();
}

class _MockTestsDetailsState extends State<MockTestsDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: mockTestLogo(context),
       elevation: 0.0,backgroundColor: Colors.transparent,
        leading: IconButton(onPressed: (){ Navigator.pop(context); },
        tooltip: 'Back', 
        icon: const Icon(Icons.arrow_back_ios,color: Colors.black,)),),
      body:Center(child:TextButton(onPressed: () { Navigator.push(context, MaterialPageRoute(builder:(context) =>  MockTestLoginScrn())); },
      child: Text("Example"))),
    );
  }
}