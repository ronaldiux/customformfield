library customformfield;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomFormField extends StatelessWidget {
  final String? labelText;
  final bool autoFocus;
  final bool enabled;
  final FocusNode fcs;
  final TextEditingController ctrl;
  final String? hinttxt;
  final String prefixtext;
  final bool obscuretxt;
  final Icon? icondecoration;
  final int? maxLength;
  final Widget? widgetprefix;
  final TextInputAction? txtInputAction;
  final TextInputType? keyboardType;
  final Color decorationColor;
  final Color decorationBorderColor;
  final Color fontColor;
  final Color lblcolor;
  final List<TextInputFormatter>? inputFormatters;

  final double fontsize;
  final double radius;
  final void Function(String)? fieldSubmitted;
  final void Function(String)? onChage;
  final String? Function(String?)? validator;
  final bool hasBorder;

  final TextStyle textStyle;

  const CustomFormField({
    Key? key,
    required this.fcs,
    required this.ctrl,
    required this.hinttxt,
    this.icondecoration,
    this.fieldSubmitted,
    this.validator,
    this.obscuretxt = false,
    this.enabled = true,
    this.txtInputAction,
    this.keyboardType,
    this.decorationColor = const Color.fromRGBO(37, 37, 38, 1),
    this.fontColor = Colors.white,
    this.fontsize = 16,
    this.radius = 20,
    this.widgetprefix,
    this.lblcolor = const Color.fromRGBO(120, 119, 122, 1),
    this.prefixtext = '',
    this.inputFormatters,
    this.autoFocus = false,
    this.maxLength,
    this.decorationBorderColor = const Color.fromRGBO(37, 37, 38, 1),
    this.onChage,
    this.hasBorder = true,
    this.labelText,
    required this.textStyle,
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
            icon: icondecoration,
            border: InputBorder.none,
            hintText: hinttxt,
            hintStyle: textStyle,
            prefixText: prefixtext,
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
            fontSize: fontsize,
            letterSpacing: 1.3,
          ),
          onFieldSubmitted: fieldSubmitted,
          onChanged: onChage,
        ),
      ),
    );
  }
}
