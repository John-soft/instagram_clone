import 'package:flutter/material.dart';
import 'package:instagram_clone/dimensions.dart';

class ResponsiveLyout extends StatelessWidget {
  final Widget webScreenLayout;
  final Widget mobileScrenLayout;

  const ResponsiveLyout({
    Key? key,
    required this.webScreenLayout,
    required this.mobileScrenLayout,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > webScreenSize) {
          return webScreenLayout;
        } else {
          return mobileScrenLayout;
        }
      },
    );
  }
}
