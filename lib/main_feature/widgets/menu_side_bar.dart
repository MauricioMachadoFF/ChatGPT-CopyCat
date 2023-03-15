import 'package:flutter/material.dart';
import 'package:open_ai_copy_cat/design_system/button.dart';
import 'package:open_ai_copy_cat/design_system/colors.dart';
import 'package:open_ai_copy_cat/design_system/sizes.dart';

class MenuSideBar extends StatelessWidget {
  const MenuSideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.maxFinite,
      width: context.width * 0.2,
      color: kColorDarkBlue,
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: context.height * 0.036,
          horizontal: context.width * 0.04,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.maxFinite,
              child: DSButton(
                label: "New Chat",
                onTap: () {},
                fontSize: 12,
                style: const DSButtonStyle.tertiary(),
              ),
            ),
            const Spacer(),
            const _Options(),
            SizedBox(height: context.height * 0.03),
            SizedBox(
              width: double.maxFinite,
              child: DSButton(
                label: "Log Out",
                onTap: () {},
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Options extends StatelessWidget {
  const _Options();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const _Option("Account"),
        SizedBox(height: context.height * 0.02),
        const _Option("Contact Us"),
      ],
    );
  }
}

class _Option extends StatelessWidget {
  const _Option(this.label);
  final String label;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        foregroundColor: kColorWhite,
        textStyle: const TextStyle(
          fontFamily: "Manrope",
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),
      ),
      child: Text(label),
    );
  }
}
