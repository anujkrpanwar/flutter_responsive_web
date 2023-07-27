import 'package:flutter/material.dart';
import 'package:flutter_responsive_web/themes/clipper.dart';
import 'package:flutter_responsive_web/themes/color.dart';
import 'package:flutter_responsive_web/themes/painter.dart';
import 'package:flutter_responsive_web/themes/spacing.dart';
import 'package:flutter_responsive_web/themes/styles.dart';
import 'package:flutter_responsive_web/widgets/image_wrapper.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ListItem extends StatelessWidget {
  final String title;
  final String? imageUrl;
  final String? description;
  final Color? color;
  final bool? shouldClip;

  const ListItem({
    Key? key,
    required this.title,
    this.imageUrl,
    this.description,
    this.color,
    this.shouldClip = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      child: Stack(
        children: [
          shouldClip == true
              ? CustomPaint(
                  painter: CustomDraw(color!),
                  child: Container(
                    child: responsiveView(context, width),
                  ),
                )
              : responsiveView(context, width),
        ],
      ),
    );
  }

  ResponsiveRowColumn responsiveView(BuildContext context, double width) {
    return ResponsiveRowColumn(
      layout: ResponsiveBreakpoints.of(context).smallerThan(DESKTOP)
          ? ResponsiveRowColumnType.COLUMN
          : ResponsiveRowColumnType.ROW,
      rowCrossAxisAlignment: CrossAxisAlignment.center,
      rowMainAxisAlignment: MainAxisAlignment.center,
      children: <ResponsiveRowColumnItem>[
        ResponsiveRowColumnItem(
          rowFlex: 1,
          columnOrder: 1,
          // rowFit: FlexFit.tight,
          child: Align(
            alignment: ResponsiveBreakpoints.of(context).smallerThan(DESKTOP)
                ? Alignment.center
                : Alignment.bottomLeft,
            child: Container(
              margin: marginBottom12,
              child: Text(
                title,
                style: headlineListItemStyle,
              ),
            ),
          ),
        ),
        ResponsiveRowColumnItem(
          rowFlex: 2,
          columnOrder: 3,
          // rowFit: FlexFit.tight,
          child: Container(
            margin: marginBottom12,
            child: Text(
              description!,
              style: headlineListItemSubTitleStyle,
            ),
          ),
        ),
        ResponsiveRowColumnItem(
          rowFlex: 3,
          columnOrder: 2,
          // rowFit: FlexFit.tight,
          child: ImageWrapper(
            image: imageUrl!,
            bgColor: Colors.transparent,
            width:
                ResponsiveBreakpoints.of(context).smallerThan(DESKTOP) ? width * 0.5 : width * 0.8,
          ),
        ),
      ],
    );
  }
}
