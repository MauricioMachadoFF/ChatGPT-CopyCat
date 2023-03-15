import 'package:flutter/material.dart';
import 'package:open_ai_copy_cat/design_system/colors.dart';
import 'package:open_ai_copy_cat/design_system/sizes.dart';
import 'package:open_ai_copy_cat/main_feature/widgets/menu_side_bar.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFF5F4F9),
      body: SafeArea(
        child: Row(
          children: [
            const MenuSideBar(),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const _Header(),
                  SizedBox(height: context.height * 0.04),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: context.width * 0.0265,
                    ),
                    child: Column(
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
                                "Creating blog content specific to real estate",
                                onTap: () {},
                              ),
                            ),
                            SizedBox(width: context.width * 0.0265),
                            Expanded(
                              child: _Card(
                                "Creating blog content specific to real estate",
                                onTap: () {},
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
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

class _Header extends StatelessWidget {
  const _Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: context.width * 0.03,
        vertical: context.height * 0.05,
      ),
      decoration: BoxDecoration(
        color: kColorWhite,
        boxShadow: [
          BoxShadow(
            color: const Color.fromRGBO(0, 0, 0, 0.08),
            offset: Offset(0, context.height * 0.01),
            blurRadius: 38,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "RealAssist.AI",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: kColorDarkBlue,
            ),
          ),
          Text(
            "This is private message, between you and Assistant.",
            style: TextStyle(
              fontSize: 14,
              color: kColorWhiteGrey,
            ),
          )
        ],
      ),
    );
  }
}
