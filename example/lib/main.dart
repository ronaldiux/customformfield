import 'package:customformfield_an/customformfield_an.dart';
import 'package:flutter/material.dart';

class ExampleCustomFormField extends StatelessWidget {
  const ExampleCustomFormField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FocusNode fcs = FocusNode();
    TextEditingController ctrl = TextEditingController();

    return Scaffold(
      body: Column(
        children: [
          CustomFormField(
            fcs: fcs,
            ctrl: ctrl,
            hintTxt: 'Example 1',
            radius: 10,
            decorationColor: Colors.white,
            decorationBorderColor: Colors.blue.shade800,
            fontColor: Colors.black,
          ),
          CustomFormField(
            fcs: fcs,
            ctrl: ctrl,
            labelText: 'Example 2',
            radius: 15,
            decorationColor: Colors.white,
            decorationBorderColor: Colors.blue.shade800,
            fontColor: Colors.black,
          ),
        ],
      ),
    );
  }
}
