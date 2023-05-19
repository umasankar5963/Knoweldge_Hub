import 'package:flutter/material.dart';

Widget appLogo(BuildContext context) {
  return RichText(
            text: const TextSpan(
          style: TextStyle(fontSize: 22),
       children: <TextSpan>[
        TextSpan(
           text: 'Knowledge',
           style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black54)),
        TextSpan(
            text: 'Hub',
            style: TextStyle(fontWeight: FontWeight.w600, color: Colors.blue)),
      ],
    ),
  );
}

Widget mockTestLogo(BuildContext context) {
  return RichText(
            text: const TextSpan(
          style: TextStyle(fontSize: 22),
       children: <TextSpan>[
        TextSpan(
           text: 'Mock ',
           style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black54)),
        TextSpan(
            text: 'Test',
            style: TextStyle(fontWeight: FontWeight.w600, color: Colors.blue)),
      ],
    ),
  );
}


Widget generalKnowledgeLogo(BuildContext context) {
  return RichText(
            text: const TextSpan(
          style: TextStyle(fontSize: 22),
       children: <TextSpan>[
        TextSpan(
           text: 'General ',
           style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black54)),
        TextSpan(
            text: 'Knowledge',
            style: TextStyle(fontWeight: FontWeight.w600, color: Colors.blue)),
      ],
    ),
  );
}


Widget analyticalAbilityLogo(BuildContext context) {
  return RichText(
            text: const TextSpan(
          style: TextStyle(fontSize: 22),
       children: <TextSpan>[
        TextSpan(
           text: 'Analytical ',
           style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black54)),
        TextSpan(
            text: 'Ability',
            style: TextStyle(fontWeight: FontWeight.w600, color: Colors.blue)),
      ],
    ),
  );
}


Widget mathematicalAbilityLogo(BuildContext context) {
  return RichText(
            text: const TextSpan(
            style: TextStyle(fontSize: 22),
            children: <TextSpan>[
        TextSpan(
           text: 'Mathematical ',
           style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black54)),
        TextSpan(
            text: 'Ability',
            style: TextStyle(fontWeight: FontWeight.w600, color: Colors.blue)),
      ],
    ),
  );
}


Widget communicationAbilityLogo(BuildContext context) {
  return RichText(
          text: const TextSpan(
          style: TextStyle(fontSize: 22),
          children: <TextSpan>[
         TextSpan(
           text: 'Communication ',
           style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black54)),
         TextSpan(
            text: 'Ability',
            style: TextStyle(fontWeight: FontWeight.w600, color: Colors.blue)),
      ],
    ),
  );
}



