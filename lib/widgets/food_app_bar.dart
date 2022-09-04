import 'dart:ui';

import 'package:flutter/material.dart';

class FoodAppBar extends StatelessWidget with PreferredSizeWidget {
  final Widget child;
  final bool blurEnabled;
  @override
  final Size preferredSize;
  const FoodAppBar({
    Key? key,
    required this.child,
    this.blurEnabled = true,
  })  : preferredSize = const Size.fromHeight(100.0),
        super(key: key);

  @override
  Widget build(BuildContext context) => ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: blurEnabled ? 15 : 0,
            sigmaY: blurEnabled ? 15 : 0,
          ),
          child: Container(
            color: Colors.transparent,
            padding: const EdgeInsets.only(
              top: 48.0,
              left: 24,
              right: 24,
              bottom: 16,
            ),
            child: child,
          ),
        ),
      );
}
