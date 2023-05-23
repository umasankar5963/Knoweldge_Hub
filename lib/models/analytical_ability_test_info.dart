import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AnalyticalAbilityTAInfo extends StatefulWidget {
  const AnalyticalAbilityTAInfo({super.key});

  @override
  State<AnalyticalAbilityTAInfo> createState() => _AnalyticalAbilityTAInfoState();
}

class _AnalyticalAbilityTAInfoState extends State<AnalyticalAbilityTAInfo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      CustomPaint(
      size: Size(200,(200*0.5).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
      painter: AnswerClipper(),
      ),
       
      CustomPaint(
      size: Size(200,(200*0.5).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
      painter: NotAnswerClipper(),
      ),



      ],
    );
  }
}

class AnswerClipper extends CustomPainter{
  
  @override
  void paint(Canvas canvas, Size size) {
  Paint paint0 = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;
     
         
    Path path0 = Path();
    path0.moveTo(size.width*0.4163417,size.height*0.5821667);
    path0.lineTo(size.width*0.5825000,size.height*0.5826833);
    path0.lineTo(size.width*0.5841667,size.height*0.4200000);
    path0.lineTo(size.width*0.5425000,size.height*0.3333333);
    path0.lineTo(size.width*0.4581417,size.height*0.3324333);
    path0.lineTo(size.width*0.4166667,size.height*0.4183333);
    path0.lineTo(size.width*0.4158333,size.height*0.5716667);

    canvas.drawPath(path0, paint0);
  
    
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
  
}


class NotAnswerClipper extends CustomPainter{
  
  @override
  void paint(Canvas canvas, Size size) {
  Paint paint0 = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;
     
         
    Path path0 = Path();
    path0.moveTo(size.width*0.4161583,size.height*0.2514000);
    path0.lineTo(size.width*0.5841667,size.height*0.2516667);
    path0.lineTo(size.width*0.5825000,size.height*0.4150000);
    path0.lineTo(size.width*0.5445250,size.height*0.5017167);
    path0.lineTo(size.width*0.4591667,size.height*0.5000000);
    path0.lineTo(size.width*0.4175000,size.height*0.4166667);
    path0.lineTo(size.width*0.4161583,size.height*0.2514000);
    path0.close();

    canvas.drawPath(path0, paint0);
  
    
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
  
}
