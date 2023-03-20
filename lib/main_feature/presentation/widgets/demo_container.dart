import 'package:flutter/material.dart';
import 'package:open_ai_copy_cat/design_system/colors.dart';
import 'package:open_ai_copy_cat/design_system/sizes.dart';

class DemoContainer extends StatelessWidget {
  const DemoContainer({
    super.key,
    required this.options,
    required this.onPressed,
  });

  final List<String> options;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: context.width * 0.0265,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Example of types of question to ask RealAssist",
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: context.height * 0.04),
          Row(
            children: [
              Expanded(
                child: _Card(
                  options[0],
                  onTap: onPressed,
                ),
              ),
              SizedBox(width: context.width * 0.0265),
              Expanded(
                child: _Card(
                  options[1],
                  onTap: onPressed,
                ),
              ),
            ],
          ),
          SizedBox(height: context.height * 0.025),
          Row(
            children: [
              Expanded(
                child: _Card(
                  options[2],
                  onTap: onPressed,
                ),
              ),
              SizedBox(width: context.width * 0.0265),
              Expanded(
                child: _Card(
                  options[3],
                  onTap: onPressed,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _Card extends StatefulWidget {
  const _Card(
    this.label, {
    required this.onTap,
  });
  final String label;
  final VoidCallback onTap;

  @override
  State<_Card> createState() => __CardState();
}

class __CardState extends State<_Card> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: widget.onTap,
      onHover: (isHovering) {
        setState(() {
          isSelected = isHovering;
        });
      },
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: kColorWhite,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                widget.label,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(width: 16),
            AnimatedSize(
              duration: const Duration(milliseconds: 400),
              child: Icon(
                Icons.arrow_forward_rounded,
                size: isSelected ? 36 : 24,
                color: kColorPurple,
              ),
            )
          ],
        ),
      ),
    );
  }
}
