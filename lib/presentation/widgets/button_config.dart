import 'package:flutter/material.dart';

class ButtonConfig {
  final String label;
  final String imagePath;
  final VoidCallback onPressed;
  final bool isSingle;
  final Color color;
  final double width;
  final double height;
  final double imageWidth;
  final double imageHeight;
  final double imageOffsetHorizontal;
  final double imageOffsetVertical;
  final double textAlignTop;
  final double textAlignBottom;
  final double textAlignLeft;
  final double textAlignRight;
  final Color textColor;
  final double? maxTextWidth;
  final double circularRadius;

  ButtonConfig({
    required this.label,
    required this.imagePath,
    required this.onPressed,
    this.isSingle = false,
    required this.color,
    this.width = 200.0,
    this.height = 100.0,
    this.imageWidth = 135.0,
    this.imageHeight = 135.0,
    this.imageOffsetHorizontal = 0.0,
    this.imageOffsetVertical = 0.0,
    this.textAlignTop = 0.0,
    this.textAlignBottom = 0.0,
    this.textAlignLeft = 0.0,
    this.textAlignRight = 0.0,
    this.textColor = Colors.white,
    this.maxTextWidth,
    this.circularRadius = 30.0,
  });

  ButtonConfig copyWith({
    String? label,
    String? imagePath,
    VoidCallback? onPressed,
    bool? isSingle,
    Color? color,
    double? width,
    double? height,
    double? imageWidth,
    double? imageHeight,
    double? imageOffsetHorizontal,
    double? imageOffsetVertical,
    double? textAlignTop,
    double? textAlignBottom,
    double? textAlignLeft,
    double? textAlignRight,
    Color? textColor,
    double? maxTextWidth,
    double? circularRadius,
  }) {
    return ButtonConfig(
      label: label ?? this.label,
      imagePath: imagePath ?? this.imagePath,
      onPressed: onPressed ?? this.onPressed,
      isSingle: isSingle ?? this.isSingle,
      color: color ?? this.color,
      width: width ?? this.width,
      height: height ?? this.height,
      imageWidth: imageWidth ?? this.imageWidth,
      imageHeight: imageHeight ?? this.imageHeight,
      imageOffsetHorizontal:
          imageOffsetHorizontal ?? this.imageOffsetHorizontal,
      imageOffsetVertical: imageOffsetVertical ?? this.imageOffsetVertical,
      textAlignTop: textAlignTop ?? this.textAlignTop,
      textAlignBottom: textAlignBottom ?? this.textAlignBottom,
      textAlignLeft: textAlignLeft ?? this.textAlignLeft,
      textAlignRight: textAlignRight ?? this.textAlignRight,
      textColor: textColor ?? this.textColor,
      maxTextWidth: maxTextWidth ?? this.maxTextWidth,
      circularRadius: circularRadius ?? this.circularRadius,
    );
  }
}
