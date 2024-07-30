import 'package:flutter_test/flutter_test.dart';
import 'package:slider_button_lite/feature/presentation/slider_button/slider.dart';
import 'package:slider_button_lite/feature/presentation/slider_button/slider_button_prop.dart';

void main() {
  test('adds one to input values', () {
    final slide = SliderButton(
      properties: SliderButtonProperties(action: () async {
        return true;
      }),
    );
  });
}
