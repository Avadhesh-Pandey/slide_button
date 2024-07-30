import 'package:flutter/material.dart';
import 'package:slider_button_lite/feature/presentation/slider_button/slider_button_prop.dart';

class SliderButtonDisabled extends StatelessWidget {
  const SliderButtonDisabled({super.key, required this.properties});

  final SliderButtonProperties properties;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: properties.height,
      width: properties.width,
      decoration: BoxDecoration(
          color: properties.disable
              ? properties.disableButtonColor ?? Colors.grey.shade700
              : properties.backgroundColor,
          borderRadius: BorderRadius.circular(properties.radius)),
      alignment: Alignment.centerLeft,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: <Widget>[
          Container(
            alignment: properties.alignLabel,
            child: properties.label,
          ),
          Tooltip(
            verticalOffset: 50,
            message: 'Inactive',
            child: Container(
              width: (properties.width) - (properties.height),
              height: (properties.height - 70),
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(
                left: (properties.height - (properties.buttonSize ?? properties.height * 0.9)) / 2,
              ),
              child: properties.child ??
                  Container(
                    height: properties.buttonSize ?? properties.height,
                    width: properties.buttonSize ?? properties.height,
                    decoration: BoxDecoration(
                        boxShadow: properties.boxShadow != null
                            ? [
                                properties.boxShadow!,
                              ]
                            : null,
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(properties.radius)),
                    child: Center(child: properties.icon),
                  ),
            ),
          )
        ],
      ),
    );
  }
}
