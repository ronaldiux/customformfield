library customformfield;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomFormField extends StatelessWidget {
  final String? labelText;
  final bool autoFocus;
  final bool enabled;
  final FocusNode? fcs;
  final TextEditingController ctrl;
  final String? hintTxt;
  final String? prefixText;
  final bool obscuretxt;
  final Icon? iconDecoration;
  final int? maxLength;
  final Widget? widgetPrefix;
  final TextInputAction? txtInputAction;
  final TextInputType? keyboardType;
  final Color decorationColor;
  final Color decorationBorderColor;
  final Color fontColor;
  final Color lblColor;
  final List<TextInputFormatter>? inputFormatters;
  final double letterSpacing;

  final double fontSize;
  final double radius;
  final void Function(String)? fieldSubmitted;
  final void Function(String)? onChage;
  final String? Function(String?)? validator;
  final bool hasBorder;

  final TextStyle? textStyle;

  const CustomFormField({
    Key? key,
    required this.fcs,
    required this.ctrl,
    this.hintTxt,
    this.iconDecoration,
    this.fieldSubmitted,
    this.validator,
    this.obscuretxt = false,
    this.enabled = true,
    this.txtInputAction,
    this.keyboardType,
    this.decorationColor = const Color.fromRGBO(37, 37, 38, 1),
    this.fontColor = Colors.white,
    this.fontSize = 16,
    this.radius = 20,
    this.widgetPrefix,
    this.prefixText = '',
    this.inputFormatters,
    this.autoFocus = false,
    this.maxLength,
    this.decorationBorderColor = const Color.fromRGBO(37, 37, 38, 1),
    this.onChage,
    this.hasBorder = true,
    this.labelText,
    this.textStyle,
    this.lblColor = Colors.black,
    this.letterSpacing = 1.3,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: decorationColor,
        borderRadius: BorderRadius.all(
          Radius.circular(radius),
        ),
        border: hasBorder
            ? Border.all(
                color: decorationBorderColor,
                width: 1,
              )
            : null,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: TextFormField(
          maxLength: maxLength,
          autofocus: autoFocus,
          textCapitalization: TextCapitalization.sentences,
          enabled: enabled,
          enableSuggestions: true,
          keyboardType: keyboardType,
          textInputAction: txtInputAction,
          focusNode: fcs,
          controller: ctrl,
          obscureText: obscuretxt,
          inputFormatters: inputFormatters,
          decoration: InputDecoration(
            icon: iconDecoration,
            border: InputBorder.none,
            hintText: hintTxt,
            hintStyle: textStyle,
            prefixText: prefixText,
            labelText: labelText,
            prefixStyle: textStyle,
            labelStyle: textStyle,
          ),
          validator: validator,
          autovalidateMode: (ctrl.text.isEmpty)
              ? AutovalidateMode.onUserInteraction
              : AutovalidateMode.always,
          style: TextStyle(
            color: fontColor,
            fontSize: fontSize,
            letterSpacing: letterSpacing,
          ),
          onFieldSubmitted: fieldSubmitted,
          onChanged: onChage,
        ),
      ),
    );
  }
}
