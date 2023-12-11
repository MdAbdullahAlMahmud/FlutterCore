import 'package:e_commerce/common/widget/searchbar/search_bar.dart';
import 'package:e_commerce/common/widget/text_field/text_field.dart';
import 'package:e_commerce/features/shop/screen/home/widgets/home_app_bar.dart';
import 'package:flutter/material.dart';

import '../../../../common/widget/primary_button/core_button.dart';
import '../../../../common/widget/radio_button/radio_button.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  final nameTextController = TextEditingController();
  final nameTextController2 = TextEditingController();
  final nameTextController3 = TextEditingController();
  final GlobalKey<FormFieldState<String>> _textFormFieldKey =
      GlobalKey<FormFieldState<String>>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            THomeAppBar(),

          ],
        ),
      ),
    );
  }


}
