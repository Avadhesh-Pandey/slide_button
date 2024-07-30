import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:slider_button_lite/feature/presentation/slider_button/slider_button_prop.dart';
import 'package:slider_button_lite/feature/presentation/slider_button/widgets/progress_indicator.dart';

class SliderButtonActive extends StatefulWidget {
  const SliderButtonActive({super.key, required this.properties});

  final SliderButtonProperties properties;

  @override
  SliderButtonState createState() => SliderButtonState();
}

class SliderButtonState extends State<SliderButtonActive> {
  bool isLoading = false;

  @override
  void initState() {
    isLoading = widget.properties.isLoading;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const ProgressIndicatorWidget()
        : Container(
            height: widget.properties.height,
            width: widget.properties.width,
            decoration: BoxDecoration(
                color: widget.properties.disable
                    ? widget.properties.disableButtonColor ?? Colors.grey.shade700
                    : widget.properties.backgroundColor,
                borderRadius: BorderRadius.circular(widget.properties.radius)),
            alignment: Alignment.centerLeft,
            child: Stack(
              alignment: Alignment.centerLeft,
              children: <Widget>[
                Container(
                    alignment: widget.properties.alignLabel,
                    child: Shimmer.fromColors(
                      baseColor: widget.properties.disable ? Colors.grey : widget.properties.baseColor,
                      highlightColor: widget.properties.highlightedColor,
                      child: widget.properties.label ?? const Text(''),
                    )),
                Dismissible(
                  key: UniqueKey(),
                  direction: DismissDirection.startToEnd,
                  dismissThresholds: {DismissDirection.startToEnd: widget.properties.dismissThresholds},
                  confirmDismiss: (_) async {
                    setState(() {
                      isLoading = true;
                    });
                    bool result;
                    try {
                      result = (await widget.properties.action()) ?? true;
                    } catch (e) {
                      result = false;
                    }

                    setState(() {
                      isLoading = false;
                    });
                    if (!result) return false;
                    return true;
                  },
                  child: Container(
                    width:
                        widget.properties.width - (widget.properties.buttonWidth ?? widget.properties.height),
                    height: widget.properties.height,
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(
                      left: (widget.properties.height -
                              (widget.properties.buttonSize == null
                                  ? widget.properties.height
                                  : widget.properties.buttonSize!)) /
                          2,
                    ),
                    child: widget.properties.child ??
                        Container(
                          height: widget.properties.buttonSize ?? widget.properties.height,
                          width: widget.properties.buttonSize ?? widget.properties.height,
                          decoration: BoxDecoration(
                              boxShadow: widget.properties.boxShadow != null
                                  ? [
                                      widget.properties.boxShadow!,
                                    ]
                                  : null,
                              color: widget.properties.buttonColor,
                              borderRadius: BorderRadius.circular(widget.properties.radius)),
                          child: Center(child: widget.properties.icon),
                        ),
                  ),
                )
              ],
            ),
          );
  }
}
