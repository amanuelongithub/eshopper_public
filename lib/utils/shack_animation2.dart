import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ShackAnimation2 extends StatelessWidget {
  final Widget child;
  final Duration duration;
  final double offset;
  final bool dir;
  const ShackAnimation2({
    Key? key,
    required this.child,
    this.duration = const Duration(milliseconds: 1000),
    this.offset = 140.0,
    this.dir = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
        child: child,
        duration: duration,
        tween: dir ? Tween(begin: 0.0, end: 1.0) : Tween(begin: 1.0, end: 0.0),
        builder: (context, value, child) {
          return Transform.translate(
            offset: Offset(value * offset, 0.0),
            child: child,
          );
        });
  }
}
