import 'package:flutter/material.dart';
import 'package:shifo24web/src/presentation/screens/app_logo.dart';
import 'package:shifo24web/src/presentation/screens/footer.dart';
import 'package:shifo24web/src/presentation/widgets/helpers/sized_box.dart';
import 'package:shifo24web/src/repository/utils/device_type.dart';

class AppFooter extends StatelessWidget {
  const AppFooter({super.key});

  @override
  Widget build(BuildContext context) {
    ThisDevice device = ThisDevice.type(context);
    return Container(
      padding: device.isNotMobile
          ? const EdgeInsets.only(left: 112, right: 112, top: 44)
          : const EdgeInsets.only(left: 20, right: 20, top: 48, bottom: 8.0),
      color: Colors.white,
      child: device.isNotMobile
          ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const AppLogo(),
                    HBox(30),
                    FooterWidgets.copyright(),
                    HBox(8.0),
                  ],
                ),
                const Expanded(
                  flex: 3,
                  child: SizedBox(),
                ),
                FooterWidgets.contact(),
                const Expanded(
                  child: SizedBox(),
                ),
                FooterWidgets.socials(),
              ],
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const AppLogo(),
                HBox(32),
                FooterWidgets.socials(),
                HBox(32),
                FooterWidgets.contact(),
                HBox(32),
                FooterWidgets.copyright(),
              ],
            ),
    );
  }
}
