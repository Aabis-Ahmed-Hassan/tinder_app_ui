import 'package:flutter/material.dart';
import 'package:tinder_app_ui/constants/app_colors.dart';

class LogoImageWidget extends StatelessWidget {
  const LogoImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      // blendMode: BlendMode.srcIn, // Optional blend mode
      shaderCallback: (Rect bounds) {
        return LinearGradient(
          colors: [
            AppColors.gradientColorTwo,
            AppColors.gradientColorOne
          ], // Gradient colors
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ).createShader(bounds);
      },
      child: Icon(
        Icons.favorite,
        size: 34,
        color: Colors.white, // Color of the icon
      ),
    );
  }
}
