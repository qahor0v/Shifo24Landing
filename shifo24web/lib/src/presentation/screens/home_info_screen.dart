import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'package:shifo24web/src/config/theme/app_colors.dart';
import 'package:shifo24web/src/constants/text/fonts.dart';
import 'package:shifo24web/src/presentation/widgets/helpers/sized_box.dart';

class HomeInfoScreen extends StatelessWidget {
  final String number;
  final String title;

  const HomeInfoScreen({
    super.key,
    required this.number,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 44,
                width: 44,
                decoration: BoxDecoration(
                  color: focusedColor,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Center(
                  child: Text(
                    number,
                    style: const TextStyle(
                      color: appBlue100,
                      fontFamily: rubikRegular,
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
              WBox(16),
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(
                    color: subtitleColor,
                    fontFamily: rubikRegular,
                    fontSize: 17,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HomeInfoMobileScreen extends StatelessWidget {
  final String number;
  final String title;

  const HomeInfoMobileScreen({
    super.key,
    required this.number,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 44,
              width: 44,
              decoration: BoxDecoration(
                color: focusedColor,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Center(
                child: Text(
                  number,
                  style: const TextStyle(
                    color: appBlue100,
                    fontFamily: rubikRegular,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            WBox(16),
            Expanded(
              child: Text(
                title,
                style: const TextStyle(
                  color: subtitleColor,
                  fontFamily: rubikRegular,
                  fontSize: 17,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
