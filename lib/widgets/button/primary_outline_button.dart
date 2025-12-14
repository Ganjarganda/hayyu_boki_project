import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hayyu_boki_project/utils/size/ResponsiveSize.dart';
import 'package:hayyu_boki_project/utils/text/text_utils.dart';

class PrimaryOutlineButton extends StatelessWidget {
  final Color? color;
  final Color textColor;
  final String? title;
  final Function? onClick;
  final double fontSize;
  final bool useBold;
  final bool onlyRadiusBottom;
  final bool useFullWidth;
  final double? verticalMargin;
  final double? horizontalMargin;
  final String? iconPath;
  final double radius;
  final Color? iconColor;

  const PrimaryOutlineButton({
    super.key,
    required this.color,
    required this.title,
    required this.onClick,
    this.textColor = Colors.white,
    this.fontSize = 15,
    this.useBold = true,
    this.onlyRadiusBottom = false,
    this.useFullWidth = true,
    this.verticalMargin,
    this.horizontalMargin,
    this.iconPath,
    this.radius = 5,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: useFullWidth ? MediaQuery.of(context).size.width : null,
      margin: EdgeInsets.symmetric(
        vertical: verticalMargin ?? 0,
        horizontal: horizontalMargin ?? 0,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: color!),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(onlyRadiusBottom ? 0 : radius),
          topRight: Radius.circular(onlyRadiusBottom ? 0 : radius),
          bottomLeft: Radius.circular(radius),
          bottomRight: Radius.circular(radius),
        ),
      ),
      child: Material(
        type: MaterialType.transparency,
        color: Colors.transparent,
        child: InkWell(
          splashColor: color!.withValues(alpha: 0.5),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(onlyRadiusBottom ? 0 : radius),
            topRight: Radius.circular(onlyRadiusBottom ? 0 : radius),
            bottomLeft: Radius.circular(radius),
            bottomRight: Radius.circular(radius),
          ),
          onTap: () => onClick!(),
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: context.paddingTiny,
              horizontal: context.paddingMedium,
            ),
            child: Center(
              child: FittedBox(
                fit: BoxFit.fitWidth,
                child: Row(
                  children: [
                    iconPath != null
                        ? Padding(
                          padding: EdgeInsets.only(right: context.paddingTiny),
                          child: Image.asset(
                            iconPath!,
                            width: context.sizeLogoSmall,
                            height: context.sizeLogoSmall,
                            color: iconColor,
                          ),
                        )
                        : const SizedBox(),
                    Text(
                      title ?? '',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.poppins(
                        fontSize: context.bodyText,
                        fontWeight:
                            useBold ? FontWeight.bold : FontWeight.normal,
                        color: textColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
