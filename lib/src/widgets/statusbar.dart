import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Statusbar extends StatelessWidget {
  const Statusbar({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: colorScheme.brightness,
        systemNavigationBarColor: colorScheme.onSurface,
        systemNavigationBarIconBrightness: colorScheme.brightness,
      ),
      child: child,
    );
  }
}
