// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class Spacing extends StatelessWidget {
  final double? width;
  final double? height;

  const Spacing({
    this.height,
    this.width,
  });

  const Spacing.width(this.width) : height = 0;

  const Spacing.height(this.height) : width = 0;

  const Spacing.smallHeight() : this.height(8);
  const Spacing.mediumHeight() : this.height(16);
  const Spacing.bigHeight() : this.height(24);
  const Spacing.largeHeight() : this.height(32);
  const Spacing.elargeHeight() : this.height(40);
  const Spacing.eelargeHeight() : this.height(48);
  const Spacing.smallWidth() : this.width(8);
  const Spacing.mediumWidth() : this.width(16);
  const Spacing.bigWidth() : this.width(24);
  const Spacing.largeWidth() : this.width(32);
  const Spacing.elargeWidth() : this.width(40);
  @override
  Widget build(BuildContext context) {
    return SizedBox(width: width, height: height);
  }
}
