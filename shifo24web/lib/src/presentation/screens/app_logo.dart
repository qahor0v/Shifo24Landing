import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shifo24web/src/constants/assets/asset_paths.dart';
import 'package:shifo24web/src/repository/utils/device_type.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    ThisDevice device = ThisDevice.type(context);
    return SvgPicture.asset(
      AppAssets.logo,
      height: device.isNotMobile ? 40 : 32,
      fit: BoxFit.cover,
    );
  }
}
