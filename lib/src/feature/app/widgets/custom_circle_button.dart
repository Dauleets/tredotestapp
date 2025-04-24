import 'package:flutter/material.dart';

class CustomCircleButton extends StatelessWidget {
  final void Function()? onTap;
  final Widget child;
  final double size;
  final Color? bgColor;
  final Border? border;
  final List<BoxShadow>? boxShadow;

  const CustomCircleButton({super.key, 
    required this.onTap,
    required this.child,
    this.size = 36,
    this.bgColor = Colors.white,
    this.border,
    this.boxShadow,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(100),
        border: border,
        boxShadow: boxShadow ??
            [
              const BoxShadow(
                blurRadius: 5,
                color: Color.fromRGBO(0, 0, 0, 0.07),
              ),
              const BoxShadow(
                blurRadius: 35,
                offset: Offset(0, 25),
                color: Color.fromRGBO(0, 0, 0, 0.05),
              ),
            ],
      ),
      child: Material(
        borderRadius: BorderRadius.circular(100),
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(100),
          onTap: onTap,
          child: Center(
            child: child,
          ),
        ),
      ),
    );
  }
}
