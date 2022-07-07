import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    required this.labelText,
    this.color,
    required this.onPressed,
    this.borderRadius = 10,
    this.textColor,
    this.fontSize,
    this.elevation,
    this.fontWeight,
    this.padding = const EdgeInsets.symmetric(horizontal: 28, vertical: 20),
  });
  final Color? color;
  final Color? textColor;
  final String labelText;
  final double? fontSize;
  final VoidCallback? onPressed;
  final double borderRadius;
  final double? elevation;

  final FontWeight? fontWeight;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    ThemeData currentTheme = Theme.of(context);
    return ElevatedButton(
      child: Center(
        child: AutoSizeText(
          labelText,
          style: TextStyle(
            fontWeight: fontWeight ?? FontWeight.w800,
            color: textColor ?? Colors.white,
            fontSize: fontSize ?? 15,
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          minFontSize: 10,
        ),
      ),
      clipBehavior: Clip.antiAlias,
      style: ElevatedButton.styleFrom(
        elevation: elevation ?? 0,
        padding: padding,
        primary: color ?? currentTheme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
      onPressed: onPressed,
    );
  }
}

class SimpleOutlinedButton extends StatelessWidget {
  const SimpleOutlinedButton({
    required this.labelText,
    this.textColor,
    this.outlineColor,
    required this.onPressed,
    this.borderRadius = 6,
    this.fontSize,
    this.fontWeight,
    this.padding = const EdgeInsets.symmetric(horizontal: 28, vertical: 20),
  });
  final String labelText;
  final VoidCallback onPressed;
  final double borderRadius;
  final Color? outlineColor;
  final Color? textColor;
  final EdgeInsetsGeometry padding;
  final double? fontSize;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    ThemeData currentTheme = Theme.of(context);
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        padding: padding,
        textStyle: TextStyle(color: currentTheme.colorScheme.primary),
        side:
            BorderSide(color: outlineColor ?? currentTheme.colorScheme.primary),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        primary: textColor ?? outlineColor ?? currentTheme.colorScheme.primary,
      ),
      onPressed: onPressed,
      child: Center(
        child: AutoSizeText(
          labelText,
          style: TextStyle(
            fontWeight: fontWeight ?? FontWeight.w800,
            color: textColor,
            fontSize: fontSize ?? 15,
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          minFontSize: 10,
        ),
      ),
      clipBehavior: Clip.antiAlias,
    );
  }
}

class PrimaryButtonWithIcon extends StatelessWidget {
  const PrimaryButtonWithIcon({
    required this.labelText,
    this.color,
    this.fontSize,
    this.fontWeight,
    required this.icon,
    required this.onPressed,
    this.borderRadius = 6,
    this.padding = const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
  });
  final String labelText;
  final FontWeight? fontWeight;
  final double? fontSize;
  final Color? color;
  final Widget icon;
  final VoidCallback onPressed;
  final EdgeInsetsGeometry padding;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    ThemeData currentTheme = Theme.of(context);
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: icon,
      label: AutoSizeText(labelText,
          style: TextStyle(
            fontWeight: fontWeight ?? FontWeight.w800,
            color: Colors.white,
            fontSize: fontSize ?? 15,
          )),
      style: ElevatedButton.styleFrom(
        primary: color ?? currentTheme.colorScheme.primary,
        padding: padding,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
    );
  }
}

class SimpleOutlinedButtonWithIcon extends StatelessWidget {
  const SimpleOutlinedButtonWithIcon({
    required this.labelText,
    this.color,
    this.textColor,
    this.fontWeight,
    this.fontSize,
    required this.icon,
    required this.onPressed,
    this.borderRadius = 6,
    this.padding = const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
  });
  final String labelText;
  final Color? color;
  final Color? textColor;
  final Widget icon;
  final VoidCallback onPressed;
  final EdgeInsetsGeometry padding;
  final double borderRadius;
  final FontWeight? fontWeight;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    ThemeData currentTheme = Theme.of(context);
    return OutlinedButton.icon(
      onPressed: onPressed,
      icon: icon,
      label: AutoSizeText(labelText,
          style: TextStyle(
            fontWeight: fontWeight ?? FontWeight.w800,
            color: textColor ?? currentTheme.colorScheme.primary,
            fontSize: fontSize ?? 15,
          )),
      style: OutlinedButton.styleFrom(
        primary: color ?? currentTheme.colorScheme.primary,
        padding: padding,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
    );
  }
}

class SimpleTextButton extends StatelessWidget {
  final String labelText;
  final FontWeight? fontWeight;
  final double? fontSize;
  final Color? color;
  final int? maxLines;
  final VoidCallback onPressed;
  final FontStyle? fontStyle;

  const SimpleTextButton(
      {required this.labelText,
      this.fontSize,
      this.color,
      required this.onPressed,
      this.fontWeight,
      this.maxLines,
      this.fontStyle});

  @override
  Widget build(BuildContext context) {
    ThemeData currentTheme = Theme.of(context);
    return Container(
      child: InkWell(
          onTap: onPressed,
          child: AutoSizeText(
            labelText,
            style: TextStyle(
                fontWeight: fontWeight ?? FontWeight.w600,
                color: color ?? currentTheme.colorScheme.primary,
                fontSize: fontSize ?? 15,
                fontStyle: fontStyle),
            maxLines: maxLines ?? 1,
            overflow: TextOverflow.ellipsis,
          )),
    );
  }
}
