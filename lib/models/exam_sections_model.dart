// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Sections {
 String title;
 IconData icon;
  Sections({
    required this.title,
    required this.icon,
  });
}

List<Sections>sections=<Sections>[
  Sections(title: 'Analytical Ability', icon:Icons.info),
  Sections(title: 'Mathematical Ability', icon: Icons.info),
  Sections(title: 'Communication Ability', icon:Icons.info),

];