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
            TSearchbar(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CoreButton(
                  text: "Eleveated Button ",
                  onClick: () {},
                  backgroundColor: Colors.deepOrangeAccent),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CoreButton(
                  text: "OutLine 2 ",
                  onClick: () {},
                  outlineButton: true,
                  backgroundColor: Colors.deepOrangeAccent),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CoreButton(
                text: "Button 2 ",
                onClick: () {},
                backgroundColor: Colors.lightGreen,
                gradientColor: const LinearGradient(
                  colors: [Colors.lightGreenAccent, Colors.orangeAccent],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: CoreTextField(
                prefixIcon: const Icon(
                  Icons.email,
                  color: Colors.black,
                ),
                key: _textFormFieldKey,
                controller: nameTextController,
                hintText: "Default name",
                backgroundColor: Colors.white,
              ),
            ),
            /*Padding(
              padding: const EdgeInsets.all(8.0),
              child: CoreTextField(
                controller: nameTextController2,
                hintText: "Modified name",
                focusedBorderColor: Colors.greenAccent,
                borderColor: Colors.blue,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CoreTextField(
                controller: nameTextController3,
                label: "label",
                hintText: "Label name",
                focusedBorderColor: Colors.greenAccent,
                borderColor: Colors.blue,
              ),
            ),*/
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CoreButton(
                  text: "User Name Validate",
                  onClick: () {
                    if (_validateInput()) {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("Success"),
                        backgroundColor: Colors.greenAccent,
                        duration: Duration(seconds: 2),
                      ));
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("Failed"),
                        backgroundColor: Colors.redAccent,
                        duration: Duration(seconds: 2),
                      ));
                    }
                  },
                  backgroundColor: Colors.deepOrangeAccent),
            ),

            CoreRadioGroup()
          ],
        ),
      ),
    );
  }

  bool _validateInput() {
    if (nameTextController.text.isEmpty) {
      _showSnackBar('Please enter some text.');
      return false;
    }
    return _textFormFieldKey.currentState?.validate() ?? false;
  }

  void _showSnackBar(String message) {}
}
