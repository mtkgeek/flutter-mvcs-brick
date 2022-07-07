import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class FormInputFieldWithIcon extends StatelessWidget {
  FormInputFieldWithIcon(
      {required this.controller,
      this.iconPrefix,
      this.autovalidateMode,
      this.suffixIcon,
      this.fieldNode,
      this.labelText,
      this.hintText,
      this.validator,
      this.keyboardType = TextInputType.text,
      this.obscureText = false,
      this.minLines = 1,
      this.maxLines,
      this.onChanged,
      this.onSaved,
      this.borderRadius,
      this.fillColor,
      this.maxLength,
      this.fontSize,
      this.textInputAction,
      this.onSubmitted,
      this.onEditingComplete});

  final TextEditingController controller;
  final AutovalidateMode? autovalidateMode;
  final Widget? iconPrefix;
  final Widget? suffixIcon;
  final String? labelText;
  final double? borderRadius;
  final Color? fillColor;
  final String? hintText;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final bool obscureText;
  final int? minLines;
  final int? maxLines;
  final FocusNode? fieldNode;
  final void Function(String?)? onChanged;
  final void Function(String?)? onSaved;
  final int? maxLength;
  final double? fontSize;
  final TextInputAction? textInputAction;
  final void Function()? onEditingComplete;
  final Function(String)? onSubmitted;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        colorScheme: ColorScheme.dark(
          primary: Color(0XFF6D48A5),
        ),
      ),
      child: TextFormField(
          focusNode: fieldNode,
          onFieldSubmitted: onSubmitted,
          cursorColor: Theme.of(context).colorScheme.primary,
          textInputAction: textInputAction,
          onEditingComplete: onEditingComplete,
          autovalidateMode: autovalidateMode ?? AutovalidateMode.disabled,
          decoration: InputDecoration(
              isDense: true,
              disabledBorder: InputBorder.none,
              enabledBorder: OutlineInputBorder(
                borderRadius:
                    BorderRadius.all(Radius.circular(borderRadius ?? 6)),
                borderSide: BorderSide.none,
              ),
              filled: true,
              fillColor: fillColor,
              prefixIcon: iconPrefix,
              suffixIcon: suffixIcon,
              // labelText: labelText,
              labelStyle: TextStyle(
                  fontSize: fontSize ?? 14,
                  fontWeight: FontWeight.w600,
                  color: Color(0XFFC9C9C9)),
              hintText: hintText,
              hintStyle: TextStyle(
                  fontSize: fontSize ?? 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0XFFC9C9C9))),
          style: TextStyle(
              fontSize: fontSize ?? 15,
              fontWeight: FontWeight.w400,
              color: Get.theme.brightness == Brightness.dark
                  ? Colors.white
                  : Color(0XFF253274).withOpacity(0.6)),
          controller: controller,
          maxLengthEnforcement: MaxLengthEnforcement.enforced,
          onSaved: onSaved,
          onChanged: onChanged,
          keyboardType: keyboardType,
          obscureText: obscureText,
          maxLines: maxLines,
          minLines: minLines,
          validator: validator,
          inputFormatters: [
            LengthLimitingTextInputFormatter(maxLength ?? 25),
          ]),
    );
  }
}
