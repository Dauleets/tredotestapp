import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:tredo/src/core/resources/resources.dart';

class CustomLoadingWidget extends StatelessWidget {
  final bool isError;
  final double size;
  final double? value;

  const CustomLoadingWidget({
    super.key,
    this.isError = false,
    this.size = 50,
    this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.base100,
      child: Center(
        child: SizedBox(
          height: size,
          width: size,
          child: RepaintBoundary(
            child: LoadingAnimationWidget.dotsTriangle(
              color: AppColors.colorMain,
              size: 50,
            ),
          ),
        ),
      ),
    );
  }
}
