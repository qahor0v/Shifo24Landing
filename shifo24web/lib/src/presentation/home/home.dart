import 'package:flutter/material.dart';
import 'package:shifo24web/src/config/theme/app_colors.dart';
import 'package:shifo24web/src/constants/assets/asset_paths.dart';
import 'package:shifo24web/src/constants/text/fonts.dart';
import 'package:shifo24web/src/constants/text/home_texts.dart';
import 'package:shifo24web/src/presentation/screens/app_footer.dart';
import 'package:shifo24web/src/presentation/screens/app_mobile_screen.dart';
import 'package:shifo24web/src/presentation/screens/desktop_tablet_screen.dart';
import 'package:shifo24web/src/presentation/screens/footer.dart';
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
            if (device.isNotMobile)
              const DesktopTablet()
            else
              const MobileScreen(),
            const AppFooter(),
          ],
        ),
      ),
    );
  }
}
