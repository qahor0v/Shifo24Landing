import 'package:flutter/material.dart';

class FocusedWrapper extends StatefulWidget {
  final void Function()? onTap;
  final Widget Function(bool focused) child;

  const FocusedWrapper({
    super.key,
    required this.child,
    this.onTap,
  });

  @override
  State<FocusedWrapper> createState() => _FocusedWrapperState();
}

class _FocusedWrapperState extends State<FocusedWrapper> {
  bool focused = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {
        if (widget.onTap != null) {
          widget.onTap!();
        }
      },
      child: MouseRegion(
        onEnter: (val) {
          setState(() {
            focused = true;
          });
        },
        onExit: (val) {
          setState(() {
            focused = false;
          });
        },
        child: widget.child(focused),
      ),
    );
  }
}
