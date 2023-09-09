// ignore_for_file: constant_identifier_names, no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';

enum DeviceType {
  MOBILE,
  TABLET,
  DESKTOP,
}

DeviceType getDeviceType(BuildContext context) {
  double screenWidth = MediaQuery.of(context).size.width;

  if (screenWidth < 600) {
    return DeviceType.MOBILE;
  } else if (screenWidth < 1200) {
    return DeviceType.TABLET;
  } else {
    return DeviceType.DESKTOP;
  }
}

class ThisDevice {
  bool isMobile;
  bool isTablet;
  bool isDesktop;
  bool isNotMobile;

  ThisDevice({
    required this.isMobile,
    required this.isTablet,
    required this.isDesktop,
    required this.isNotMobile,
  });

  factory ThisDevice.type(BuildContext context) {
    final bool _isMobile = getDeviceType(context) == DeviceType.MOBILE;
    final bool _isTablet = getDeviceType(context) == DeviceType.TABLET;
    final bool _isDesktop = getDeviceType(context) == DeviceType.DESKTOP;
    final bool _isNotMobile = getDeviceType(context) == DeviceType.TABLET ||
        getDeviceType(context) == DeviceType.DESKTOP;

    return ThisDevice(
      isMobile: _isMobile,
      isTablet: _isTablet,
      isDesktop: _isDesktop,
      isNotMobile: _isNotMobile,
    );
  }

  double size(
      {required double mobile,
      required double tablet,
      required double desktop}) {
    if (isMobile) {
      return mobile;
    } else if (isTablet) {
      return tablet;
    } else {
      return desktop;
    }
  }
}
