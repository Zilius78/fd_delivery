import 'package:flutter/material.dart';

class FoodAppBar extends StatelessWidget with PreferredSizeWidget {
  final Widget child;
  @override
  final Size preferredSize;
  const FoodAppBar({
    Key? key,
    required this.child,
  })  : preferredSize = const Size.fromHeight(100.0),
        super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.only(
          top: 48.0,
          left: 24  ,
          right: 24,
          bottom: 16,
        ),
        child: child,
      );
}
