import 'package:flutter/material.dart';
import 'package:open_ai_copy_cat/design_system/colors.dart';
import 'package:open_ai_copy_cat/design_system/sizes.dart';

class SubscribeModal extends StatefulWidget {
  const SubscribeModal({super.key});

  @override
  State<SubscribeModal> createState() => _SubscribeModalState();
}

class _SubscribeModalState extends State<SubscribeModal> {
  bool showModal = true;

  void _onCloseModal() {
    setState(() {
      showModal = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return showModal
        ? SingleChildScrollView(
            child: Container(
              width: context.width * 0.23,
              margin: EdgeInsets.only(
                bottom: context.height * 0.11,
                right: context.width * 0.02,
              ),
              decoration: BoxDecoration(
                  color: kColorWhite,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromRGBO(0, 0, 0, 0.2),
                      offset:
                          Offset(context.width * 0.005, context.height * 0.01),
                      blurRadius: 38,
                    ),
                  ]),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: context.width * 0.015,
                      vertical: context.height * 0.025,
                    ),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(20),
                      ),
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/images/subscribe_modal_pattern.png",
                        ),
                        fit: BoxFit.contain,
                      ),
                      gradient: LinearGradient(
                        colors: [
                          kColorBlue,
                          kColorWhiteBlue,
                        ],
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SizedBox(height: 8),
                        Align(
                          alignment: Alignment.topRight,
                          child: ElevatedButton(
                            onPressed: _onCloseModal,
                            style: ElevatedButton.styleFrom(
                              shape: const CircleBorder(),
                              padding: const EdgeInsets.all(8),
                              backgroundColor: kColorWhite,
                            ),
                            child: const Icon(
                              Icons.close_rounded,
                              color: kColorDarkGrey,
                              size: 20,
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          "Subscribe and Enjoy Full Features",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 26,
                            color: kColorWhite,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: context.width * 0.015,
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: context.height * 0.04),
                        const Text(
                          "With subscription, get over 500,000 words every month",
                          style: TextStyle(
                            color: kColorDarkGrey,
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(height: context.height * 0.04),
                        SizedBox(
                          width: double.maxFinite,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: kColorWhiteBlue,
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: context.height * 0.015,
                              ),
                              child: const Text(
                                "Subscribe Now",
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: context.height * 0.02),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        : const SizedBox.shrink();
  }
}
