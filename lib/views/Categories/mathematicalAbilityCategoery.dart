import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../widgets/appbar.dart';

class MathematicalAbilityDetails extends StatefulWidget {
  const MathematicalAbilityDetails({super.key});

  @override
  State<MathematicalAbilityDetails> createState() => _MathematicalAbilityDetailsState();
}

class _MathematicalAbilityDetailsState extends State<MathematicalAbilityDetails> {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar( title:mathematicalAbilityLogo(context),elevation: 0.0,backgroundColor: Colors.transparent,
        leading: IconButton(onPressed: (){ Navigator.pop(context); },tooltip: 'Back', icon: const Icon(Icons.arrow_back_ios,color: Colors.black,)),),
    );
  }
}