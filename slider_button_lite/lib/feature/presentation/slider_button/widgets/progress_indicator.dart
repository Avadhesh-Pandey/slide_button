import 'package:flutter/material.dart';

class ProgressIndicatorWidget extends StatelessWidget {
  const ProgressIndicatorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: Material(
        shape: CircleBorder(side: BorderSide.none),
        elevation: 4,
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
