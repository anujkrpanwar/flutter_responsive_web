import 'package:flutter/material.dart';
import 'package:flutter_responsive_web/themes/color.dart';
import 'package:flutter_responsive_web/themes/icons.dart';
import 'package:flutter_responsive_web/themes/spacing.dart';
import 'package:flutter_responsive_web/themes/styles.dart';
import 'package:flutter_responsive_web/widgets/image_wrapper.dart';
import 'package:responsive_framework/responsive_framework.dart';

class TopSection extends StatelessWidget {
  final String title;
  final String? imageUrl;

  const TopSection({
    Key? key,
    required this.title,
    this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      color: topSectionBG,
      child: ResponsiveRowColumn(
        layout: ResponsiveBreakpoints.of(context).smallerThan(DESKTOP)
            ? ResponsiveRowColumnType.COLUMN
            : ResponsiveRowColumnType.ROW,
        rowCrossAxisAlignment: CrossAxisAlignment.center,
        rowMainAxisAlignment: MainAxisAlignment.center,
        // columnCrossAxisAlignment: CrossAxisAlignment.center,
        // rowPadding: const EdgeInsets.symmetric(horizontal: 80, vertical: 80),
        // columnPadding: const EdgeInsets.symmetric(horizontal: 25, vertical: 50),
        children: <ResponsiveRowColumnItem>[
          ResponsiveRowColumnItem(
            rowFlex: 1,
            columnOrder: 1,
            // rowFit: FlexFit.tight,
            child: Container(
              margin: blockMargin,
              child: Text(
                title,
                style: ResponsiveBreakpoints.of(context).smallerThan(DESKTOP)
                    ? headlineTextStyleMobile
                    : headlineTextStyle,
              ),
            ),
          ),
          ResponsiveRowColumnItem(
            rowFlex: 2,
            columnOrder: 2,
            // rowFit: FlexFit.tight,
            child: ResponsiveBreakpoints.of(context).smallerThan(DESKTOP)
                ? ImageWrapper(
                    bgColor: topSectionBG,
                    image: imageUrl!,
                  )
                : buildMaterialIconCircle(imageUrl!, width * 0.2),
          ),
        ],
      ),
    );
  }
}
