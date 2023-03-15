import 'package:flutter/material.dart';
import 'package:open_ai_copy_cat/design_system/colors.dart';
import 'package:open_ai_copy_cat/design_system/sizes.dart';

class DSButton extends StatefulWidget {
  const DSButton({
    super.key,
    required this.label,
    required this.onTap,
    this.style = const DSButtonStyle.primary(),
    required this.fontSize,
    this.weight = FontWeight.w600,
  });
  final String label;
  final VoidCallback onTap;
  final DSButtonStyle style;
  final double fontSize;
  final FontWeight weight;

  @override
  State<DSButton> createState() => DSButtonState();
}

class DSButtonState extends State<DSButton> {
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        decoration: BoxDecoration(
          color: widget.style.backgroundColor,
          border: widget.style.hasBorder
              ? Border.all(
                  color: widget.style.labelColor,
                )
              : const Border(),
          borderRadius: BorderRadius.circular(8),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: context.width * 0.01,
          vertical: context.height * 0.005,
        ),
        child: Text(
          widget.label,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: widget.fontSize,
            fontWeight: widget.weight,
            color: widget.style.labelColor,
          ),
        ),
      ),
    );
  }
}

class DSButtonStyle {
  const DSButtonStyle({
    required this.backgroundColor,
    required this.activeBackgroundColor,
    required this.labelColor,
    required this.activeLabelColor,
    this.hasBorder = false,
  });
  final Color backgroundColor;
  final Color activeBackgroundColor;
  final Color labelColor;
  final Color activeLabelColor;
  final bool hasBorder;

  DSButtonStyle copyWith({
    Color? backgroundColor,
    Color? activeBackgroundColor,
    Color? labelColor,
    Color? activeLabelColor,
  }) =>
      DSButtonStyle(
        backgroundColor: backgroundColor ?? this.backgroundColor,
        activeBackgroundColor:
            activeBackgroundColor ?? this.activeBackgroundColor,
        labelColor: labelColor ?? this.labelColor,
        activeLabelColor: activeLabelColor ?? this.activeLabelColor,
      );

  const DSButtonStyle.primary()
      : backgroundColor = kColorWhite,
        activeBackgroundColor = kColorWhiteBlue,
        labelColor = kColorDarkBlue,
        activeLabelColor = kColorWhite,
        hasBorder = false;

  const DSButtonStyle.secondary()
      : backgroundColor = kColorWhiteBlue,
        activeBackgroundColor = kColorWhite,
        labelColor = kColorWhite,
        activeLabelColor = kColorDarkBlue,
        hasBorder = false;

  const DSButtonStyle.tertiary()
      : backgroundColor = kColorDarkBlue,
        activeBackgroundColor = kColorWhite,
        labelColor = kColorWhite,
        activeLabelColor = kColorDarkBlue,
        hasBorder = true;
}
