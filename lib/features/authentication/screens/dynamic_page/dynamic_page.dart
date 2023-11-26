import 'package:flutter/material.dart';

class DynamicPage extends StatelessWidget {
   DynamicPage({super.key});

  List<Widget> widgets = [];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: widgets,
    );
  }
}
