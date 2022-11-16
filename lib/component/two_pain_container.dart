import 'package:flutter/material.dart';

/// [left] と [right] を横に並べます。
/// また、[left]、[right] それぞれの Widget の中では
/// [MediaQueryData.size] が各ペインに与えられた領域で上書きされます。
class TwoPainContainer extends StatelessWidget {
  const TwoPainContainer({
    super.key,
    required this.left,
    required this.right,
    this.dividerRatio = 1.0,
  });

  final Widget left;
  final Widget right;
  final double dividerRatio;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: _MediaQueryWrapper(left),
        ),
        Expanded(
          flex: 1 ~/ dividerRatio,
          child: _MediaQueryWrapper(right),
        ),
      ],
    );
  }
}

/// 与えられた [BoxConstraint] をもとに、[child] が利用する [MediaQueryData.size] を上書きします。
class _MediaQueryWrapper extends StatelessWidget {
  const _MediaQueryWrapper(this.child);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return MediaQuery(
        data: MediaQuery.of(context).copyWith(
          size: Size(
            constraint.maxWidth,
            constraint.maxHeight,
          ),
        ),
        child: child,
      );
    });
  }
}
