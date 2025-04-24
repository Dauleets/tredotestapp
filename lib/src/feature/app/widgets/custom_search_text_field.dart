import 'package:tredo/src/core/extension/extensions.dart';
import 'package:tredo/src/core/gen/assets.gen.dart';
import 'package:tredo/src/core/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomSearchTextField extends StatelessWidget {
  final TextEditingController textEditingController;
  final void Function(String)? onChanged;
  final void Function(String)? onFieldSubmitted;
  final void Function()? onClosePressed;
  final bool autoFocus;
  final Color? fillColor;

  const CustomSearchTextField({
    super.key,
    required this.textEditingController,
    this.autoFocus = true,
    this.onChanged,
    this.onFieldSubmitted,
    this.fillColor,
    this.onClosePressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: autoFocus,
      onChanged: onChanged,
      onFieldSubmitted: onFieldSubmitted,
      decoration: InputDecoration(
        filled: true,
        isDense: true,
        fillColor: fillColor ?? context.theme.base200,
         suffix: textEditingController.text.isNotEmpty
            ? IconButton(
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(
                  maxHeight: 20,
                  maxWidth: 20,
                ),
                onPressed: onClosePressed,
                splashRadius: 20,
                icon: SvgPicture.asset(
                  Assets.icons.back.path,
                ),
              )
            : null,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: context.theme.primaryColor,
          ),
        ),
        contentPadding: const EdgeInsets.all(8),
        isCollapsed: true,
        constraints: const BoxConstraints(maxHeight: 40),
        prefixIconConstraints:
            const BoxConstraints(maxHeight: 20, maxWidth: 44),
        prefixIcon: const Padding(
          padding: EdgeInsets.only(left: 16, right: 8),
          // child: SvgPicture.asset(
          //   Assets.icons.searchIcon.path,
          // ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      style: TextStyle(
        color: context.theme.base900,
        height: 24 / 18,
        fontSize: 18,
      ),
      textAlignVertical: TextAlignVertical.center,
      cursorColor: context.theme.primaryColor,
      controller: textEditingController,
    );
  }
}
