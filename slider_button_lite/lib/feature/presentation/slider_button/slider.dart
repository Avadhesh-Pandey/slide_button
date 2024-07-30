import 'package:flutter/material.dart';
import 'package:slider_button_lite/feature/presentation/slider_button/slider_button_prop.dart';
import 'package:slider_button_lite/feature/presentation/slider_button/widgets/slider_button_active.dart';
import 'package:slider_button_lite/feature/presentation/slider_button/widgets/slider_button_disabled.dart';

class SliderButton extends StatelessWidget {
  const SliderButton({super.key, required this.properties});

  final SliderButtonProperties properties;

  @override
  Widget build(BuildContext context) {
    return properties.disable
        ? SliderButtonDisabled(properties: properties)
        : SliderButtonActive(properties: properties);
  }
}
