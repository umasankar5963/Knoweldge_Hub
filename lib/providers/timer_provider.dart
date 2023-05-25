// import 'dart:async';

// import 'package:flutter/material.dart';

// class ExamTimer  extends ChangeNotifier {
//    Timer? _timer;
//   int _minutesRemaining = 150;
//   int _secondsRemaining = 60;

//   updatetimer(){
//     const oneSec = const Duration(seconds: 1);
//     _timer = Timer.periodic(oneSec, (timer) {
//       if (_minutesRemaining == 0 && _secondsRemaining == 0) {
//         timer.cancel();
//         // TODO: Perform any action when the timer ends
//       } else {
//         if (_secondsRemaining == 0) {
//           _minutesRemaining--;
//           _secondsRemaining = 59;
//         } else {
//           _secondsRemaining--;
//         }
//         notifyListeners();
//       }
//     });
//   }
//   String getFormattedTime() {
//     String minutesStr = _minutesRemaining.toString().padLeft(2, '0');
//     String secondsStr = _secondsRemaining.toString().padLeft(2, '0');

//     return '$minutesStr:$secondsStr';
//   }

//   @override
//   void dispose() {
//     _timer?.cancel();
//     super.dispose();
//   }
// }
