import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hayyu_boki_project/utils/text/text_utils.dart';

class PrimarySolidTextfield extends StatelessWidget {
  final String? hintText;
  final TextInputAction? action;
  final TextInputType? type;
  final bool secureText;
  final TextEditingController? controller;
  final bool readOnly;
  final Function? onClick;
  final bool disableMaxLine;
  final TextCapitalization? capitalization;
  final bool showSuffixIcon;
  final Function? onEditComplete;
  final Function(String)? onChange;
  final Function(String)? onSubmit;
  final Color? textColor;
  final Color? hintTextColor;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final FocusNode? focusNode;
  final bool? autoFocus;
  final int? maxLength;
  final Color? backgroundColor;
  final EdgeInsets? contentPadding;
  final List<TextInputFormatter>? inputFormatter;
  final bool enable;
  final Iterable<String>? autoFill;

  const PrimarySolidTextfield({
    super.key,
    required this.hintText,
    required this.action,
    required this.type,
    this.secureText = false,
    required this.controller,
    this.readOnly = false,
    this.onClick,
    this.disableMaxLine = false,
    this.capitalization,
    this.showSuffixIcon = false,
    this.onEditComplete,
    this.onChange,
    this.onSubmit,
    this.textColor,
    this.hintTextColor,
    this.suffixIcon,
    this.prefixIcon,
    this.focusNode,
    this.autoFocus = false,
    this.maxLength,
    this.backgroundColor,
    this.contentPadding,
    this.inputFormatter,
    this.enable = true,
    this.autoFill,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: TextField(
        enabled: enable,
        readOnly: readOnly,
        onTap: () => onClick != null ? onClick!() : {},
        controller: controller,
        textInputAction: action,
        keyboardType: type,
        autofillHints: autoFill,
        obscureText: secureText,
        focusNode: focusNode,
        inputFormatters: inputFormatter,
        autofocus: autoFocus!,
        maxLines: disableMaxLine ? 5 : 1,
        maxLength: maxLength,
        onChanged: (value) => onChange != null ? onChange!(value) : {},
        onSubmitted: (value) => onSubmit != null ? onSubmit!(value) : {},
        onEditingComplete:
            () => onEditComplete != null ? onEditComplete!() : {},
        style: TextStyle(
          fontSize: context.bodyText,
          fontWeight: FontWeight.normal,
          color: textColor ?? Colors.black,
        ),
        decoration: InputDecoration(
          hintText: hintText,
          contentPadding:
              contentPadding ??
              EdgeInsets.symmetric(
                vertical: screenWidth < screenHeight ? 4.w : 2.h,
                horizontal: screenWidth < screenHeight ? 2.w : 1.h,
              ),
          filled: true,
          fillColor:
              readOnly == true
                  ? grayColor.withValues(alpha: 0.4)
                  : (backgroundColor ?? grayFormColor),
          counterText: '',
          hintStyle: styleSubtitle.copyWith(
            color: hintTextColor ?? grayColor,
            fontSize: screenWidth < screenHeight ? 16.sp : 10.sp,
          ),
          suffixIcon: showSuffixIcon ? suffixIcon : null,
          prefixIcon: prefixIcon,
          border: InputBorder.none,
        ),
        textCapitalization: capitalization ?? TextCapitalization.none,
      ),
    );
  }
}
