import 'package:flutter/material.dart';

import '../widgets/appbar.dart';

class CommunicationAbilityDetails extends StatefulWidget {
  const CommunicationAbilityDetails({super.key});

  @override
  State<CommunicationAbilityDetails> createState() => _CommunicationAbilityDetailsState();
}

class _CommunicationAbilityDetailsState extends State<CommunicationAbilityDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: communicationAbilityLogo(context),elevation: 0.0,backgroundColor: Colors.transparent,
        leading: IconButton(onPressed: (){ Navigator.pop(context); },tooltip: 'Back', icon: const Icon(Icons.arrow_back_ios,color: Colors.black,)),),
    );
  }
}