import 'dart:math';

import 'package:flutter/material.dart';
import 'package:responsive_practice/component/responsive_wrap.dart';

/// 3つ並んだメニューボタンを表す Widget
/// 与えられたサイズに応じてボタン間の余白の大きさが変化します
class TopMenu extends StatelessWidget {
  const TopMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ResponsiveWrap(
      spacing: max(size.width, size.height) > 600 ? 80 : 16,
      children: [
        ElevatedButton(onPressed: () {}, child: const Text('メニュー１')),
        ElevatedButton(onPressed: () {}, child: const Text('メニュー２')),
        ElevatedButton(onPressed: () {}, child: const Text('メニュー３')),
      ],
    );
  }
}
