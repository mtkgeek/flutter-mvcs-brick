import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
/*
FormInputField(
                controller: _url,
                labelText: 'Post URL',
                validator: Validator.notEmpty,
                keyboardType: TextInputType.multiline,
                minLines: 3,
              ),
*/

class FormInputField extends StatelessWidget {
  FormInputField(
      {required this.controller,
      this.labelText,
      this.validator,
      this.keyboardType = TextInputType.text,
      this.obscureText = false,
      this.minLines = 1,
      this.onChanged,
      this.maxLines,
      this.borderRadius,
      this.fillColor,
      this.hintText,
      this.focusColor,
      this.maxLength,
      this.inputFormatters,
      this.textAlign,
      this.autoValidateMode,
      this.decoration,
      this.fontSize,
      this.textInputAction,
      this.onEditingComplete,
      this.onSaved});

  final TextEditingController controller;
  final String? labelText;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final bool obscureText;
  final int? minLines;
  final int? maxLines;

  final void Function(String?)? onChanged;
  final void Function(String?)? onSaved;
  final double? borderRadius;
  final Color? fillColor;
  final String? hintText;
  final Color? focusColor;
  final int? maxLength;
  final List? inputFormatters;
  final TextAlign? textAlign;
  final autoValidateMode;
  final double? fontSize;
  final InputDecoration? decoration;
  final textInputAction;
  final onEditingComplete;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: autoValidateMode ?? AutovalidateMode.disabled,
      cursorColor: Theme.of(context).colorScheme.primary,
      style: TextStyle(
          fontSize: fontSize ?? 15,
          fontWeight: FontWeight.w600,
          color: Color(0XFFFFFFFF)),
      textInputAction: textInputAction,
      onEditingComplete: onEditingComplete,
      decoration: decoration ??
          InputDecoration(
              contentPadding: obscureText
                  ? EdgeInsets.fromLTRB(15, 15, 15, 13)
                  : EdgeInsets.fromLTRB(12, 12, 12, 8),
              errorStyle: TextStyle(height: 0),
              isDense: true,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                Radius.circular(borderRadius ?? 6),
              )),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0XFFE0E0E0), width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(6.0)),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Theme.of(context).colorScheme.primary, width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(6.0)),
              ),
              focusColor: focusColor,
              filled: true,
              fillColor: fillColor,
              labelText: labelText,
              hintText: hintText,
              hintStyle: TextStyle(
                  fontSize: fontSize ?? 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0XFFC9C9C9))),
      controller: controller,
      maxLengthEnforcement: MaxLengthEnforcement.enforced,
      onSaved: onSaved,
      onChanged: onChanged,
      keyboardType: keyboardType,
      obscureText: obscureText,
      inputFormatters: [
        LengthLimitingTextInputFormatter(maxLength ?? 80),
        ...?inputFormatters
      ],
      maxLines: maxLines,
      minLines: null,
      expands: !obscureText,
      textAlignVertical: TextAlignVertical.top,
      validator: validator,
      textAlign: textAlign ?? TextAlign.start,
    );
  }
}
