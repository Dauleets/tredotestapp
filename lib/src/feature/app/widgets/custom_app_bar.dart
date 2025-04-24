import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tredo/src/core/gen/assets.gen.dart';
import 'package:tredo/src/core/resources/resources.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final TextStyle style;
  final List<Widget>? actions;
  final bool leadingExist;
  final bool? centerTitle;
  final bool? showBottomDivider;
  final Color? backgroundColor;

  const CustomAppBar({
    super.key,
    required this.title,
    required this.style,
    this.centerTitle,
    this.actions,
    required this.leadingExist,
    this.showBottomDivider = false,
    this.backgroundColor,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: preferredSize, // here the desired height
      child: AppBar(
        scrolledUnderElevation: 0,
        centerTitle: centerTitle ?? true,
        elevation: 0,
        backgroundColor: backgroundColor ?? AppColors.kWhite,
        title: Text(
          title,
          style: style,
        ),
        bottom: showBottomDivider == true
            ? PreferredSize(
                preferredSize: const Size.fromHeight(1.0),
                child: Container(
                  color: AppColors.base100,
                  height: 1,
                ),
              )
            : null,
        leading: leadingExist
            ? GestureDetector(
                onTap: () {
                  context.router.maybePop();
                },
                child: Padding(
                    padding: const EdgeInsets.all(13),
                    child: SvgPicture.asset(Assets.icons.back.path, color: AppColors.kWhite,)),
              )
            : Container(),
        actions: actions,
      ),
    );
  }
}
