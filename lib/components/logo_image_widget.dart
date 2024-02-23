import 'package:flutter/material.dart';
import 'package:tinder_app_ui/constants/app_colors.dart';
import 'package:tinder_app_ui/constants/app_icon.dart';

class LogoImageWidget extends StatelessWidget {
  const LogoImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      // blendMode: BlendMode.srcIn, // Optional blend mode
      shaderCallback: (Rect bounds) {
        return LinearGradient(
          colors: [
            AppColors.defaultColorRed,
            AppColors.defaultColorOrange
          ], // Gradient colors
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ).createShader(bounds);
      },
      child: Icon(
        AppIcon.appIcon,
        size: 34,
        color: Colors.white, // Color of the icon
      ),
    );
  }
}
