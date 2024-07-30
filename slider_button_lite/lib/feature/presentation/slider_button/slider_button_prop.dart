import 'package:flutter/material.dart';

class SliderButtonProperties{
  final Widget? child;
  final double radius;
  final double height;
  final double width;
  final double? buttonSize;
  final double? buttonWidth;
  final Color backgroundColor;
  final Color baseColor;
  final Color highlightedColor;
  final Color buttonColor;
  final Color? disableButtonColor;
  final Widget? label;
  final Alignment alignLabel;
  final BoxShadow? boxShadow;
  final Widget? icon;
  final Future<bool?> Function() action;
  final bool shimmer;
  final double dismissThresholds;

  final bool disable;

  ///To show the progressbar
  final bool isLoading;

  const SliderButtonProperties({
    required this.action,
    this.radius = 100,
    this.boxShadow,
    this.child,
    this.shimmer = true,
    this.height = 70,
    this.buttonSize,
    this.buttonWidth,
    this.width = 270,
    this.alignLabel = const Alignment(0.6, 0),
    this.backgroundColor = const Color(0xffe0e0e0),
    this.baseColor = Colors.black87,
    this.buttonColor = Colors.white,
    this.disableButtonColor,
    this.highlightedColor = Colors.white,
    this.label,
    this.icon,
    this.dismissThresholds = 0.75,
    this.disable = false,
    this.isLoading = false,
  }) : assert((buttonSize ?? 60) <= (height));

}