import 'package:flutter/material.dart';

enum ImagePosition { right, left }

class CustomButton extends StatelessWidget {
  final String label;
  final String imagePath;
  final VoidCallback onPressed;
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
  final ImagePosition imagePosition;
  final double imageTextSpacing;

  const CustomButton({
    super.key,
    required this.label,
    required this.imagePath,
    required this.onPressed,
    required this.color,
    this.width = 10.0,
    required this.height,
    required this.imageWidth,
    required this.imageHeight,
    required this.imageOffsetHorizontal,
    required this.imageOffsetVertical,
    this.textAlignTop = 0.0,
    this.textAlignBottom = 0.0,
    this.textAlignLeft = 0.0,
    this.textAlignRight = 0.0,
    this.textColor = Colors.white,
    this.maxTextWidth,
    this.circularRadius = 30.0,
    this.imagePosition = ImagePosition.right,
    this.imageTextSpacing = 10.0,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(circularRadius),
        ),
        child: InkWell(
          onTap: onPressed,
          borderRadius: BorderRadius.circular(circularRadius),
          child: imagePosition == ImagePosition.left
              ? _buildLeftImageLayout()
              : _buildRightImageLayout(),
        ),
      ),
    );
  }

  Widget _buildLeftImageLayout() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: 0.0,
            top: imageOffsetVertical,
            bottom: imageOffsetVertical,
          ),
          child: Image.asset(
            imagePath,
            width: imageWidth,
            height: imageHeight,
            fit: BoxFit.contain,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 15.0,
            top: textAlignTop,
            bottom: textAlignBottom,
          ),
          child: Container(
            constraints: BoxConstraints(
              maxWidth: maxTextWidth ?? width * 0.6,
            ),
            child: Text(
              label,
              style: TextStyle(
                color: textColor,
                fontSize: 20.0,
                fontFamily: 'SFPro-Medium',
              ),
              textAlign: TextAlign.center,
              softWrap: true,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildRightImageLayout() {
    return Stack(
      children: [
        Align(
          alignment: Alignment(
            (textAlignLeft - textAlignRight) / (width / 2) - 1.0,
            (textAlignTop - textAlignBottom) / (height / 2) - 1.0,
          ),
          child: Padding(
            padding: EdgeInsets.only(
              left: 16.0 + textAlignLeft,
              right: 16.0 + textAlignRight,
              top: textAlignTop,
              bottom: textAlignBottom,
            ),
            child: Container(
              constraints: BoxConstraints(
                maxWidth: maxTextWidth ?? width * 0.8,
              ),
              child: Text(
                label,
                style: TextStyle(
                  color: textColor,
                  fontSize: 20.0,
                  fontFamily: 'SFPro-Medium',
                ),
                textAlign: TextAlign.left,
                softWrap: true,
              ),
            ),
          ),
        ),
        Positioned(
          right: 0,
          top: 0,
          bottom: 0,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(circularRadius),
            child: Transform.translate(
              offset: Offset(imageOffsetHorizontal, imageOffsetVertical),
              child: Image.asset(
                imagePath,
                width: imageWidth,
                height: imageHeight,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
