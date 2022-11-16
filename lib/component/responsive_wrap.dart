import 'package:flutter/material.dart';

/// ボタンを3つ並べます。
/// [MediaQueryData] で与えられた領域が縦長の場合は縦に、横長の場合は横に並べます。
class ResponsiveWrap extends StatelessWidget {
  const ResponsiveWrap({
    super.key,
    required this.children,
    this.spacing = 0,
  });

  final List<Widget> children;
  final double spacing;

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    final gap = orientation == Orientation.landscape
        ? SizedBox(width: spacing)
        : SizedBox(height: spacing);

    final spacedChildren =
        children.map((child) => [gap, child]).expand((e) => e).skip(1).toList();

    return orientation == Orientation.landscape
        ? Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: spacedChildren,
          )
        : Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: spacedChildren,
          );
  }
}
