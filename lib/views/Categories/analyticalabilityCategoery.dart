import 'package:flutter/material.dart';

import '../widgets/appbar.dart';

class AnalyticalAbilityDetails extends StatefulWidget {
  const AnalyticalAbilityDetails({super.key});

  @override
  State<AnalyticalAbilityDetails> createState() => _AnalyticalAbilityDetailsState();
}

class _AnalyticalAbilityDetailsState extends State<AnalyticalAbilityDetails> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar( title:analyticalAbilityLogo(context),elevation: 0.0,backgroundColor: Colors.transparent,
        leading: IconButton(onPressed: (){ Navigator.pop(context); },tooltip: 'Back', icon: const Icon(Icons.arrow_back_ios,color: Colors.black,)),),
    );
  }
}