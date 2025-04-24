// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tredo/src/core/gen/assets.gen.dart';
import 'package:tredo/src/core/resources/resources.dart';

class FieldCustomButton extends StatelessWidget {
  final String? text;
  final VoidCallback? onPressed;
  final double? height;
  final double? width;
  final Color? color;
  final String? iconPath;
  final TextStyle? textStyle;
  final BorderRadius? borderRadius;
  final EdgeInsetsGeometry? padding;

  const FieldCustomButton({
    super.key,
    this.text,
    this.onPressed,
    this.height = 56.0,
    this.width = double.infinity,
    this.color = Colors.blue,
    this.textStyle,
    this.iconPath,
    this.borderRadius,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromRGBO(255, 255, 255, 0.1),
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(16),
          ),
          padding: padding ?? const EdgeInsets.symmetric(vertical: 16),
        ),
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                text ?? 'Button',
                style: textStyle ??
                    AppTextStyles.m16w400.copyWith(
                        inherit: true,
                        color: const Color.fromRGBO(255, 255, 255, 0.5)),
              ),
              if (iconPath != null)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2),
                  child: iconPath!.isNotEmpty
                      ? SvgPicture.asset(
                          iconPath!,
                          color: const Color.fromRGBO(255, 255, 255, 0.5),
                        )
                      : SvgPicture.asset(
                          Assets.icons.right.path,
                          color: const Color.fromRGBO(255, 255, 255, 0.5),
                        ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
