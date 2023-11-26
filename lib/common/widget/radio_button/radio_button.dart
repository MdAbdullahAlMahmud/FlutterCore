import 'package:flutter/material.dart';

class CoreRadioGroup extends StatefulWidget {
  const CoreRadioGroup({super.key});

  @override
  State<CoreRadioGroup> createState() => _CoreRadioGroupState();
}

class _CoreRadioGroupState extends State<CoreRadioGroup> {
  int? selectedOption = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Text("OTP ruwhqeriuhweriuewhruihewv "),
            Text("Email werweqwetergfdgdfg"),
            Text("Both dfgfdgdfgdsfgdsfgdsfg"),
            Radio(
                value: 1,
                groupValue: selectedOption,
                onChanged: (value) {
                  setState(() {
                    selectedOption = value;
                  });
                })

            /*ListTile(
              title: const Text('OTP'),
              leading: Radio(
                value: 1,
                groupValue: selectedOption,
                onChanged: (value) {
                  setState(() {
                    selectedOption = value;
                    print("Button value: $value");
                  });
                },
              ),
            ),

            ListTile(
              title: const Text('Email'),
              leading: Radio(
                value: 2,
                groupValue: selectedOption,
                onChanged: (value) {
                  setState(() {
                    selectedOption = value;
                    print("Button value: $value");
                  });
                },
              ),
            ),
            ListTile(
              title: const Text('Both'),
              leading: Radio(
                value: 3,
                groupValue: selectedOption,
                onChanged: (value) {
                  setState(() {
                    selectedOption = value;
                    print("Button value: $value");
                  });
                },
              ),
            ),*/
          ],
        ),
      ),
    );
  }
}
