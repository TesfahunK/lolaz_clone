import 'package:flutter/material.dart';
import 'package:lolaz_clone/utils/ui/common.dart';

abstract class CommonWidgets {
  static Widget masker(Widget widget,
      {LinearGradient gradient, bool accept = false}) {
    return ShaderMask(
        child: widget,
        blendMode: BlendMode.srcATop,
        shaderCallback: (Rect bounds) {
          return accept
              ? gradient.createShader(bounds)
              : UiCommons.leftToRight().createShader(bounds);
        });
  }

  static Widget emptyList(
      {IconData icon, double iconSize = 80, String msg, double fontSize = 16}) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: iconSize,
            color: UiCommons.accentColor.withOpacity(0.7),
          ),
          SizedBox(height: 20),
          Text(
            msg,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: fontSize,
                color: UiCommons.primaryColor.withOpacity(0.4)),
          )
        ],
      ),
    );
  }
}
