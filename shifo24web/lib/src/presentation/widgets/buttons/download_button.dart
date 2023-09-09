import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shifo24web/src/config/theme/app_colors.dart';
import 'package:shifo24web/src/presentation/widgets/helpers/mouse_region_wrapper.dart';
import 'package:shifo24web/src/presentation/widgets/helpers/sized_box.dart';

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
