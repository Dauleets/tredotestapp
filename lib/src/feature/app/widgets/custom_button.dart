import 'package:flutter/material.dart';
import 'package:tredo/src/core/resources/resources.dart';

class CustomButton extends StatelessWidget {
  final Widget? child;
  final void Function()? onPressed;
  final ButtonStyle style;
  final double? width;
  final double? height;
  final String text;
  final bool isExpanded;
  final void Function()? onLongPress;
  final LinearGradient gradient;
  final bool hasGradient;
  final double radius;
  final Color textColor;
  final EdgeInsets padding;
  final Color? bgColor;

  const CustomButton({
    super.key,
    required this.onPressed,
    required this.style,
    this.child,
    this.width,
    this.height,
    this.text = '',
    this.isExpanded = true,
    this.onLongPress,
    this.gradient = const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: AppGradientColors.line5,
    ),
    this.radius = 16,
    this.textColor = Colors.white,
    this.hasGradient = false,
    this.padding = EdgeInsets.zero,
    this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? (isExpanded ? double.infinity : null),
      height: height ?? 44,
      decoration: BoxDecoration(
        color: bgColor ?? Colors.transparent,
        gradient: hasGradient ? gradient : null,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: Padding(
        padding: padding,
        child: ElevatedButton(
          onPressed: onPressed,
          onLongPress: onLongPress,
          style: style,
          child: child ??
              Text(
                text,
                style: AppTextStyles.m16w600.copyWith(color: textColor),
                textAlign: TextAlign.center,
              ),
        ),
      ),
    );
  }
}

class CustomButtonStyles {
  CustomButtonStyles._();

  static ButtonStyle primaryButtonStyle(
    BuildContext context, {
    double elevation = 0,
    double radius = 16,
    double height = 44,
    Color? backgroundColor,
    Color? foregroundColor = Colors.white,
    Color? disabledForegroundColor = Colors.white,
    Color? disabledBackgroundColor,
    Color? shadowColor,
    EdgeInsetsGeometry? padding,
    BorderSide side = BorderSide.none,
  }) {
    return ElevatedButton.styleFrom(
      // padding: EdgeInsets.all(value),
      // alignment: Alignment.center,
      fixedSize: Size.fromHeight(height),
      foregroundColor: foregroundColor,
      backgroundColor: backgroundColor ?? AppColors.colorMain,
      disabledForegroundColor: disabledForegroundColor,
      disabledBackgroundColor: disabledBackgroundColor ?? AppColors.colorMain,
      elevation: elevation,
      shadowColor: shadowColor ?? AppColors.colorMain,
      textStyle: AppTextStyles.m16w600,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius),
        side: side,
      ),
      padding: padding,
    );
  }

  static ButtonStyle circleButtonStyle(
  BuildContext context, {
    double elevation = 0,
    double radius = 60,
    double height = 60,
    Color? backgroundColor,
    Color? foregroundColor = Colors.white,
    Color? disabledForegroundColor = Colors.white,
    Color? disabledBackgroundColor,
    Color? shadowColor,
    EdgeInsetsGeometry? padding,
    BorderSide side = BorderSide.none,
  }) {
    return ElevatedButton.styleFrom(
      // padding: EdgeInsets.all(value),
      // alignment: Alignment.center,
      fixedSize: Size(height, height),
      foregroundColor: foregroundColor,
      backgroundColor: backgroundColor ?? AppColors.colorMain,
      disabledForegroundColor: disabledForegroundColor,
      disabledBackgroundColor: disabledBackgroundColor ?? AppColors.colorMain,
      elevation: elevation,
      shadowColor: shadowColor ?? AppColors.colorMain,
      textStyle: AppTextStyles.m16w600,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100),
        side: side,
      ),
      padding: padding,
    );
  }

  static ButtonStyle mainButtonStyle(
    BuildContext context, {
    double elevation = 0,
    double radius = 16,
    double height = 44,
    Color? backgroundColor,
    Color? foregroundColor = AppColors.colorMain,
    Color? disabledForegroundColor = Colors.white,
    Color? disabledBackgroundColor,
    Color? shadowColor,
    EdgeInsetsGeometry? padding,
    BorderSide side = BorderSide.none,
  }) {
    return ElevatedButton.styleFrom(
      // padding: EdgeInsets.all(value),
      // alignment: Alignment.center,
      fixedSize: Size.fromHeight(height),
      foregroundColor: foregroundColor,
      backgroundColor: backgroundColor ?? AppColors.colorMain,
      disabledForegroundColor: disabledForegroundColor,
      disabledBackgroundColor: disabledBackgroundColor ?? AppColors.colorMain,
      elevation: elevation,
      shadowColor: shadowColor ?? AppColors.colorMain,
      textStyle: AppTextStyles.m16w600,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius),
        side: side,
      ),
      padding: padding,
    );
  }

  static ButtonStyle greyButtonStyle(
    BuildContext context, {
    double elevation = 0,
    double radius = 16,
    double height = 44,
    Color? backgroundColor,
    Color? foregroundColor = AppColors.colorMain,
    Color? disabledForegroundColor = Colors.white,
    Color? disabledBackgroundColor,
    Color? shadowColor,
    EdgeInsetsGeometry? padding,
    BorderSide side = BorderSide.none,
  }) {
    return ElevatedButton.styleFrom(
      // padding: EdgeInsets.all(value),
      // alignment: Alignment.center,
      fixedSize: Size.fromHeight(height),
      foregroundColor: foregroundColor,
      backgroundColor: backgroundColor ?? AppColors.colorEDEDED,
      disabledForegroundColor: disabledForegroundColor,
      disabledBackgroundColor: disabledBackgroundColor ?? AppColors.colorEDEDED,
      elevation: elevation,
      shadowColor: shadowColor ?? AppColors.colorEDEDED,
      textStyle: AppTextStyles.m16w600,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius),
        side: side,
      ),
      padding: padding,
    );
  }

  static ButtonStyle accountButtonStyle(
    BuildContext context, {
    double elevation = 0,
    double radius = 12,
    double height = 50,
    Color? backgroundColor,
    Color? foregroundColor = Colors.black,
    Color? disabledForegroundColor = Colors.white,
    Color? disabledBackgroundColor,
    Color? shadowColor,
    EdgeInsetsGeometry? padding,
    BorderSide side = BorderSide.none,
  }) {
    return ElevatedButton.styleFrom(
      // padding: EdgeInsets.all(value),
      // alignment: Alignment.center,
      fixedSize: Size.fromHeight(height),
      foregroundColor: foregroundColor,
      backgroundColor: backgroundColor ?? AppColors.colorEDEDED,
      disabledForegroundColor: disabledForegroundColor,
      disabledBackgroundColor: disabledBackgroundColor ?? AppColors.colorEDEDED,
      elevation: elevation,
      shadowColor: shadowColor ?? AppColors.colorEDEDED,
      textStyle: AppTextStyles.m16w600,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius),
        side: side,
      ),
      padding: padding,
    );
  }

  static ButtonStyle purpleWithBorderButtonStyle(
    BuildContext context, {
    double elevation = 0,
    double radius = 8,
    double height = 32,
    Color? shadowColor,
  }) {
    return ElevatedButton.styleFrom(
      fixedSize: Size.fromHeight(height),
      foregroundColor: Colors.white,
      backgroundColor: AppColors.colorMain,
      elevation: elevation,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      shadowColor: shadowColor ?? AppColors.colorMain,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius),
        side: const BorderSide(
          color: AppColors.colorMain,
          width: 0.5,
        ),
      ),
    );
  }

  static ButtonStyle whiteButtonStyle(
    BuildContext context, {
    double elevation = 0,
    double radius = 12,
    double height = 32,
    Color? shadowColor,
  }) {
    return ElevatedButton.styleFrom(
      fixedSize: Size.fromHeight(height),
      foregroundColor: Colors.white,
      backgroundColor: AppColors.kWhite,
      elevation: elevation,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      shadowColor: shadowColor ?? AppColors.colorMain,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius),
      ),
    );
  }

//   static ButtonStyle mainButtonStyle(
//       BuildContext context, {
//         double elevation = 0,
//         double height = 51,
//         double radius = 16,
//         BorderSide side = BorderSide.none,
//         Color? backgroundColor = AppColors.color3CD7D7,
//         Color? foregroundColor = Colors.white,
//         TextStyle? textStyle,
//         Color? disabledForegroundColor = Colors.white,
//         Color? disabledBackgroundColor = AppColors.color3CD7D7,
//       }) {
//     return ElevatedButton.styleFrom(
//       fixedSize: Size.fromHeight(height),
//       foregroundColor: foregroundColor,
//       backgroundColor: backgroundColor,
//       disabledForegroundColor: disabledForegroundColor,
//       disabledBackgroundColor:
//       disabledBackgroundColor ?? AppColors.mainColor.withOpacity(0.1),
//       shadowColor: Colors.transparent,
//       elevation: elevation,
//       padding: EdgeInsets.zero,
//       textStyle: textStyle ??
//           const TextStyle(
//               inherit: false,
//               fontFamily: FontFamily.inter,
//               fontWeight: FontWeight.w600,
//               fontSize: 16),
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(radius),
//         side: side,
//       ),
//     );
//   }
//
//   static ButtonStyle mainSmallButtonStyle(
//       BuildContext context, {
//         double elevation = 0,
//         double height = 31,
//         double radius = 12,
//         BorderSide side = BorderSide.none,
//         Color? backgroundColor = AppColors.color0AB9B9,
//         TextStyle? textStyle,
//         EdgeInsetsGeometry? padding,
//         Color? foregroundColor = Colors.white,
//         Color? disabledForegroundColor = AppColors.color393333,
//         Color? disabledBackgroundColor = AppColors.colorF2F2F7,
//       }) {
//     return ElevatedButton.styleFrom(
//       fixedSize: Size.fromHeight(height),
//       foregroundColor: foregroundColor,
//       backgroundColor: backgroundColor,
//       disabledForegroundColor: disabledForegroundColor,
//       disabledBackgroundColor:
//       disabledBackgroundColor ?? AppColors.mainColor.withOpacity(0.1),
//       shadowColor: Colors.transparent,
//       elevation: elevation,
//       padding: padding ?? EdgeInsets.zero,
//       textStyle: textStyle ??
//           const TextStyle(
//               fontFamily: FontFamily.inter,
//               fontWeight: FontWeight.w600,
//               fontSize: 16),
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(radius),
//         side: side,
//       ),
//     );
//   }
//
//   static ButtonStyle lightBlueBtnStyle(
//       BuildContext context, {
//         double elevation = 0,
//         double height = 51,
//         double radius = 16,
//         BorderSide side = BorderSide.none,
//         TextStyle? textStyle,
//         Color? backgroundColor = AppColors.color3CD7D7Op20,
//         Color? foregroundColor = Colors.black,
//         Color? disabledForegroundColor = AppColors.color393333,
//         Color? disabledBackgroundColor = AppColors.colorF2F2F7,
//       }) {
//     return ElevatedButton.styleFrom(
//       fixedSize: Size.fromHeight(height),
//       foregroundColor: foregroundColor,
//       backgroundColor: backgroundColor,
//       disabledForegroundColor: disabledForegroundColor,
//       disabledBackgroundColor:
//       disabledBackgroundColor ?? AppColors.mainColor.withOpacity(0.1),
//       shadowColor: Colors.transparent,
//       elevation: elevation,
//       padding: EdgeInsets.zero,
//       textStyle: textStyle ??
//           const TextStyle(
//               fontFamily: FontFamily.inter,
//               fontWeight: FontWeight.w600,
//               fontSize: 16),
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(radius),
//         side: side,
//       ),
//     );
//   }
//
//   static ButtonStyle greenButtonStyle(
//       BuildContext context, {
//         double elevation = 0,
//         double height = 44,
//         double radius = 8,
//         BorderSide side = BorderSide.none,
//         Color? backgroundColor = AppColors.color34DB52,
//         Color? foregroundColor = Colors.white,
//         Color? disabledForegroundColor = Colors.white,
//         Color? disabledBackgroundColor = const Color(0xff241e48),
//       }) {
//     return ElevatedButton.styleFrom(
//       fixedSize: Size.fromHeight(height),
//       foregroundColor: foregroundColor,
//       backgroundColor: backgroundColor,
//       disabledForegroundColor: disabledForegroundColor,
//       disabledBackgroundColor:
//       disabledBackgroundColor ?? AppColors.mainColor.withOpacity(0.1),
//       shadowColor: Colors.transparent,
//       elevation: elevation,
//       padding: EdgeInsets.zero,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(radius),
//         side: side,
//       ),
//     );
//   }
//
//   static ButtonStyle mainGreyButtonStyle(
//       BuildContext context, {
//         double elevation = 0,
//         double height = 54,
//         double radius = 16,
//         BorderSide side = BorderSide.none,
//         Color? backgroundColor = AppColors.background,
//         Color? foregroundColor = AppColors.mainDark,
//         Color? disabledForegroundColor = Colors.grey,
//         Color? disabledBackgroundColor = AppColors.greyButton,
//       }) {
//     return ElevatedButton.styleFrom(
//       fixedSize: Size.fromHeight(height),
//       foregroundColor: foregroundColor,
//       backgroundColor: backgroundColor,
//       disabledForegroundColor: disabledForegroundColor,
//       disabledBackgroundColor:
//       disabledBackgroundColor ?? AppColors.mainColor.withOpacity(0.1),
//       shadowColor: Colors.transparent,
//       elevation: elevation,
//       padding: EdgeInsets.zero,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(radius),
//         side: side,
//       ),
//     );
//   }
//
//   static ButtonStyle primaryWhiteWithBorderButtonStyle({
//     double elevation = 0,
//     double radius = 8,
//     // Color? backgroundColor = AppColors.kWhite,
//     // Color? foregroundColor = AppColors.kWhite,
//     // Color? disabledBackgroundColor = AppColors.kGrey200,
//     Color? shadowColor = const Color.fromRGBO(255, 255, 255, 1),
//     BorderRadiusGeometry? borderRadius,
//   }) {
//     return ElevatedButton.styleFrom(
//       // foregroundColor: foregroundColor,
//       // backgroundColor: backgroundColor,
//       shadowColor: shadowColor,
//       // disabledBackgroundColor: disabledBackgroundColor,
//       elevation: elevation,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(radius),
//         side: const BorderSide(
//           // color: AppColors.kGray300,
//         ),
//       ),
//     );
//   }
//

//
//   static ButtonStyle withYellowBorderButtonStyle({
//     double elevation = 0,
//     double height = 54,
//     double radius = 4,
//   }) {
//     return ElevatedButton.styleFrom(
//       maximumSize: const Size.fromHeight(54),
//       foregroundColor: Colors.transparent,
//       // backgroundColor: AppColors.kWhite,
//       shadowColor: Colors.transparent,
//       elevation: elevation,
//       padding: EdgeInsets.zero,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(radius),
//       ),
//       side: const BorderSide(
//         // color: AppColors.kYellow,
//       ),
//     );
//   }
//
// // ignore: long-parameter-list
//   static ButtonStyle primaryYellowButtonStyle({
//     double elevation = 0,
//     double radius = 8,
//     // Color? backgroundColor = AppColors.kPrimary,
//     // Color? foregroundColor = AppColors.kWhite,
//     // Color? disabledBackgroundColor = AppColors.kGrey200,
//     Color? shadowColor = const Color.fromRGBO(255, 255, 255, 1),
//     BorderRadiusGeometry? borderRadius,
//   }) {
//     return ElevatedButton.styleFrom(
//       // foregroundColor: foregroundColor,
//       // backgroundColor: backgroundColor,
//       shadowColor: shadowColor,
//       // disabledBackgroundColor: disabledBackgroundColor,
//       elevation: elevation,
//       shape: RoundedRectangleBorder(
//         borderRadius: borderRadius ?? BorderRadius.circular(radius),
//         // side: const BorderSide(color: Colors.white),
//       ),
//     );
//   }
//
//   static ButtonStyle lightYellowButtonStyle({
//     double elevation = 0,
//     double height = 54,
//     double radius = 8,
//   }) {
//     return ElevatedButton.styleFrom(
//       maximumSize: Size.fromHeight(height),
//       foregroundColor: Colors.white,
//       // backgroundColor: AppColors.kYellow.withOpacity(0.55),
//       shadowColor: Colors.white,
//       elevation: elevation,
//       padding: EdgeInsets.zero,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(radius),
//       ),
//     );
//   }
//
//   static ButtonStyle redButtonStyle({
//     double elevation = 0,
//     double height = 54,
//     double radius = 8,
//   }) {
//     return ElevatedButton.styleFrom(
//       maximumSize: Size.fromHeight(height),
//       foregroundColor: Colors.white,
//       backgroundColor: Colors.red.withOpacity(0.7),
//       shadowColor: Colors.white,
//       elevation: elevation,
//       padding: EdgeInsets.zero,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(radius),
//       ),
//     );
//   }
}
