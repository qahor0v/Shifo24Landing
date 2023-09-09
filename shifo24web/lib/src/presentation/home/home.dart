import 'package:flutter/material.dart';
import 'package:shifo24web/src/config/theme/app_colors.dart';
import 'package:shifo24web/src/constants/assets/asset_paths.dart';
import 'package:shifo24web/src/constants/text/fonts.dart';
import 'package:shifo24web/src/constants/text/home_texts.dart';
import 'package:shifo24web/src/presentation/screens/home_info_screen.dart';
import 'package:shifo24web/src/presentation/widgets/buttons/download_button.dart';
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
                  HBox(
                    device.size(mobile: 64, tablet: 120, desktop: 152),
                  ),
                  Row(
                    children: [
                      Container(
                        //padding: const EdgeInsets.all(40),
                        decoration: BoxDecoration(
                          color: appRed50,
                          borderRadius: BorderRadius.circular(
                            device.size(mobile: 16, tablet: 24, desktop: 32),
                          ),
                        ),
                        child: Center(
                          child: Image.asset(
                            AppAssets.aptechka,
                            height: device.size(
                              mobile: 100,
                              tablet: 200,
                              desktop: 298,
                            ),
                            width: device.size(
                              mobile: 100,
                              tablet: 200,
                              desktop: 298,
                            ),
                          ),
                        ),
                      ),
                      WBox(
                        device.size(mobile: 16, tablet: 32, desktop: 56),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              HomeTexts.nima,
                              style: TextStyle(
                                color: titleColor,
                                fontSize: 30,
                                fontFamily: rubikBold,
                              ),
                            ),
                            HBox(12),
                            const Text(
                              HomeTexts.nimaTitle,
                              style: TextStyle(
                                color: subtitleColor,
                                fontSize: 22,
                                fontFamily: rubikRegular,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  HBox(56),
                  const Text(
                    HomeTexts.aynan,
                    style: TextStyle(
                      color: titleColor,
                      fontSize: 30,
                      fontFamily: rubikBold,
                    ),
                  ),
                  HBox(24),
                  Row(
                    children: [
                      const HomeInfoScreen(number: '1', title: HomeTexts.info1),
                      WBox(36),
                      const HomeInfoScreen(number: '2', title: HomeTexts.info2),
                    ],
                  ),
                  HBox(20),
                  Row(
                    children: [
                      const HomeInfoScreen(number: '3', title: HomeTexts.info3),
                      WBox(36),
                      const HomeInfoScreen(number: '4', title: HomeTexts.info4),
                    ],
                  ),
                  HBox(56),
                  HBox(56),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
