// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

import '../../utils/my_size.dart';

class MySlider extends StatefulWidget {
  final double value;
  final double min;
  final double max;
  final ValueChanged<double> onChanged;

  const MySlider({
    super.key,
    required this.value,
    required this.min,
    required this.max,
    required this.onChanged,
  });

  @override
  _MySliderState createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderThemeData(
          trackHeight: MySize.scaleFactorHeight * 14,
          overlayShape: SliderComponentShape.noOverlay,
          thumbShape: CustomThumbShape(
              thumbWidth: MySize.size16, thumbHeight: MySize.size10),
          thumbColor: const Color(0xff122A3B),
          activeTrackColor: const Color(0xff122A3B)),
      child: Slider(
        value: widget.value,
        min: widget.min,
        max: widget.max,
        onChanged: widget.onChanged,
      ),
    );
  }
}

class CustomThumbShape extends SliderComponentShape {
  final double thumbWidth;
  final double thumbHeight;

  CustomThumbShape({
    required this.thumbWidth,
    required this.thumbHeight,
  });

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size(thumbWidth, thumbHeight);
  }

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required Animation<double> activationAnimation,
    required Animation<double> enableAnimation,
    required bool isDiscrete,
    required TextPainter labelPainter,
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required TextDirection textDirection,
    required double value,
    required double textScaleFactor,
    required Size sizeWithOverflow,
  }) {
    final thumbRadius = thumbWidth / 2;

    final thumbPaint = Paint()
      ..color = sliderTheme.thumbColor!
      ..style = PaintingStyle.fill;

    final thumbCenter = center + Offset(0, thumbHeight / 170);

    context.canvas.drawCircle(thumbCenter, thumbRadius, thumbPaint);
  }
}
