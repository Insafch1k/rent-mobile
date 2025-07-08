import 'package:flutter/material.dart';
import 'custom_button.dart';
import 'button_config.dart';

class ButtonGrid extends StatelessWidget {
  final List<ButtonConfig> buttons;

  const ButtonGrid({super.key, required this.buttons});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(
            height: 30.0,
          ),
          SizedBox(
            height: buttons[0].height,
            child: CustomButton(
              label: buttons[0].label,
              imagePath: buttons[0].imagePath,
              onPressed: buttons[0].onPressed,
              color: buttons[0].color,
              width: buttons[0].width,
              height: buttons[0].height,
              imageWidth: buttons[0].imageWidth,
              imageHeight: buttons[0].imageHeight,
              imageOffsetHorizontal: buttons[0].imageOffsetHorizontal,
              imageOffsetVertical: buttons[0].imageOffsetVertical,
              textAlignTop: buttons[0].textAlignTop,
              textAlignBottom: buttons[0].textAlignBottom,
              textAlignLeft: buttons[0].textAlignLeft,
              textAlignRight: buttons[0].textAlignRight,
            ),
          ),
          const SizedBox(height: 20.0),
          SizedBox(
            height: buttons[1].height,
            child: CustomButton(
              label: buttons[1].label,
              imagePath: buttons[1].imagePath,
              onPressed: buttons[1].onPressed,
              color: buttons[1].color,
              width: buttons[1].width,
              height: buttons[1].height,
              imageWidth: buttons[1].imageWidth,
              imageHeight: buttons[1].imageHeight,
              imageOffsetHorizontal: buttons[1].imageOffsetHorizontal,
              imageOffsetVertical: buttons[1].imageOffsetVertical,
              textAlignTop: buttons[1].textAlignTop,
              textAlignBottom: buttons[1].textAlignBottom,
              textAlignLeft: buttons[1].textAlignLeft,
              textAlignRight: buttons[1].textAlignRight,
            ),
          ),
          const SizedBox(height: 20.0),
          SizedBox(
            height: buttons[2].height,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: CustomButton(
                    label: buttons[2].label,
                    imagePath: buttons[2].imagePath,
                    onPressed: buttons[2].onPressed,
                    color: buttons[2].color,
                    width: buttons[2].width,
                    height: buttons[2].height,
                    imageWidth: buttons[2].imageWidth,
                    imageHeight: buttons[2].imageHeight,
                    imageOffsetHorizontal: buttons[2].imageOffsetHorizontal,
                    imageOffsetVertical: buttons[2].imageOffsetVertical,
                    textAlignTop: buttons[2].textAlignTop,
                    textAlignBottom: buttons[2].textAlignBottom,
                    textAlignLeft: buttons[2].textAlignLeft,
                    textAlignRight: buttons[2].textAlignRight,
                  ),
                ),
                const SizedBox(width: 8.0),
                Expanded(
                  child: CustomButton(
                    label: buttons[3].label,
                    imagePath: buttons[3].imagePath,
                    onPressed: buttons[3].onPressed,
                    color: buttons[3].color,
                    width: buttons[3].width,
                    height: buttons[3].height,
                    imageWidth: buttons[3].imageWidth,
                    imageHeight: buttons[3].imageHeight,
                    imageOffsetHorizontal: buttons[3].imageOffsetHorizontal,
                    imageOffsetVertical: buttons[3].imageOffsetVertical,
                    textAlignTop: buttons[3].textAlignTop,
                    textAlignBottom: buttons[3].textAlignBottom,
                    textAlignLeft: buttons[3].textAlignLeft,
                    textAlignRight: buttons[3].textAlignRight,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
