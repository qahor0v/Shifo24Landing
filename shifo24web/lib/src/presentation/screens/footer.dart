import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shifo24web/src/config/theme/app_colors.dart';
import 'package:shifo24web/src/constants/text/fonts.dart';
import 'package:shifo24web/src/presentation/widgets/helpers/sized_box.dart';

class FooterWidgets {
  static Widget contact() => Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Bog’lanish uchun',
            style: TextStyle(
              color: dark100,
              fontSize: 16,
              fontFamily: rubikRegular,
            ),
          ),
          HBox(8.0),
          const Row(
            children: [
              Icon(Icons.email_outlined, color: dark500),
              Text(
                ' shifo24@gmail.com',
                style: TextStyle(
                  color: dark500,
                  fontSize: 16,
                  fontFamily: rubikRegular,
                ),
              ),
            ],
          )
        ],
      );

  static Widget socials() => Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Bizni kuzatib boring',
            style: TextStyle(
              color: dark100,
              fontSize: 16,
              fontFamily: rubikRegular,
            ),
          ),
          HBox(8.0),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(FontAwesomeIcons.instagram, color: dark500),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(FontAwesomeIcons.telegram, color: dark500),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(FontAwesomeIcons.facebook, color: dark500),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(FontAwesomeIcons.twitter, color: dark500),
              ),
            ],
          )
        ],
      );

  static Widget copyright() => const Text(
        '© 2022 Shifo24',
        style: TextStyle(
          color: dark100,
          fontSize: 16,
          fontFamily: rubikRegular,
        ),
      );
}
