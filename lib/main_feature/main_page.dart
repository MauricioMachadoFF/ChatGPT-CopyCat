import 'package:flutter/material.dart';
import 'package:open_ai_copy_cat/design_system/colors.dart';
import 'package:open_ai_copy_cat/design_system/sizes.dart';
import 'package:open_ai_copy_cat/main_feature/widgets/demo_conatiner.dart';
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
                  const Expanded(child: DemoContainer()),
                  SizedBox(height: context.height * 0.02),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: context.width * 0.0265,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              filled: true,
                              hintText: "Ask RealAssist Something",
                              hintStyle: const TextStyle(
                                color: kColorWhiteGrey,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                              contentPadding: const EdgeInsets.all(16),
                              fillColor: kColorWhite,
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(16)),
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shape: const CircleBorder(),
                            padding: const EdgeInsets.all(16),
                          ),
                          child: const Icon(
                            Icons.send_outlined,
                            color: kColorWhite,
                            size: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: context.height * 0.02),
                ],
              ),
            ),
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
