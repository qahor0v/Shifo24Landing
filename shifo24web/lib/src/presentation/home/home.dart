import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shifo24web/src/config/theme/app_colors.dart';
import 'package:shifo24web/src/constants/assets/asset_paths.dart';
import 'package:shifo24web/src/constants/text/fonts.dart';
import 'package:shifo24web/src/constants/text/home_texts.dart';
import 'package:shifo24web/src/presentation/widgets/helpers/mouse_region_wrapper.dart';
import 'package:shifo24web/src/presentation/widgets/helpers/sized_box.dart';
import 'package:shifo24web/src/repository/utils/device_type.dart';

import '../screens/app_logo.dart';

class Home extends StatelessWidget {
  static const String id = "/home";

  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    ThisDevice device = ThisDevice.type(context);
    return Scaffold(
      backgroundColor: appBgColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 112,
                right: 112,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HBox(20.0),
                  const AppLogo(),
                  HBox(32.0),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              HomeTexts.title,
                              style: TextStyle(
                                fontFamily: rubikBold,
                                fontWeight: FontWeight.w700,
                                color: titleColor,
                                fontSize: 58,
                                letterSpacing: -0.02,
                                height: 62 / 58,
                              ),
                            ),
                            HBox(18.0),
                            const Text(
                              HomeTexts.subtitle,
                              style: TextStyle(
                                fontFamily: rubikRegular,
                                fontWeight: FontWeight.w400,
                                color: subtitleColor,
                                fontSize: 18,
                              ),
                            ),
                            HBox(26.0),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                DownloadButton(
                                  title: "Google play'",
                                  icon: AppAssets.playMarket,
                                  onTap: () {},
                                ),
                                WBox(16),
                                DownloadButton(
                                  title: "App store'",
                                  icon: AppAssets.appStore,
                                  onTap: () {},
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Image.asset(
                        AppAssets.homeImage,
                        height: device.size(
                          mobile: 200,
                          tablet: 320,
                          desktop: 592,
                        ),
                        width: device.size(
                          mobile: 200,
                          tablet: 320,
                          desktop: 592,
                        ),
                        fit: BoxFit.cover,
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class DownloadButton extends StatelessWidget {
  final void Function() onTap;
  final String title;
  final String icon;

  const DownloadButton({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return FocusedWrapper(
      onTap: onTap,
      child: (focused) {
        return AnimatedContainer(
          padding: const EdgeInsets.symmetric(
            vertical: 11,
            horizontal: 15,
          ),
          duration: const Duration(microseconds: 200),
          decoration: BoxDecoration(
            color: focused ? focusedColor : Colors.transparent,
            borderRadius: BorderRadius.circular(11),
            border: Border.all(
              width: 2,
              color: borderColor,
            ),
          ),
          child: Row(
            children: [
              SvgPicture.asset(icon),
              WBox(4),
              RichText(
                text: TextSpan(
                  text: title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    letterSpacing: -0.5,
                  ),
                  children: const [
                    TextSpan(
                      text: "dan\nyuklash",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.5,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
