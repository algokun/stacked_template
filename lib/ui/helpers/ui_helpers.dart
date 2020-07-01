import 'package:flutter/material.dart';

import 'scale.dart';

class UIHelpers {
  double width;
  double height;

  //block sizes that change according to ui
  double blockSizeHorizontal;
  double blockSizeVertical;

  // An Utility tool to help scale things better.
  ScalingHelper scalingHelper;

  // Text Styles
  TextStyle headline;
  TextStyle title;
  TextStyle body;

  //Vertical Spaces that change accordingly
  SizedBox verticalSpaceLow;
  SizedBox verticalSpaceMedium;
  SizedBox verticalSpaceHigh;

  //Horizontal Spaces that change accordingly
  SizedBox horizontalSpaceLow;
  SizedBox horizontalSpaceMedium;
  SizedBox horizontalSpaceHigh;

  //Colors based on theme
  Color background;
  Color textPrimary;
  Color textSecondary;
  Color canvas;

  UIHelpers.fromContext(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);

    var screenWidth = mediaQuery.size.width;
    var screenHeight = mediaQuery.size.height;

    var theme = Theme.of(context);

    scalingHelper = ScalingHelper(width: screenWidth);

    headline = TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: scalingHelper.size(28));

    title = TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: scalingHelper.size(20));

    body = TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: scalingHelper.size(18));

    blockSizeHorizontal = screenWidth / 100;
    blockSizeVertical = screenHeight / 100;

    verticalSpaceLow = SizedBox(
      height: blockSizeVertical * 3,
    );
    verticalSpaceMedium = SizedBox(
      height: blockSizeVertical * 7,
    );
    verticalSpaceHigh = SizedBox(
      height: blockSizeVertical * 11,
    );

    horizontalSpaceLow = SizedBox(
      width: blockSizeHorizontal * 3,
    );
    horizontalSpaceMedium = SizedBox(
      width: blockSizeHorizontal * 7,
    );
    horizontalSpaceHigh = SizedBox(
      width: blockSizeHorizontal * 11,
    );

    background = theme.backgroundColor;
    textPrimary = theme.textTheme.bodyText1.color;
    textSecondary = theme.disabledColor;
    canvas = theme.canvasColor;
  }
}
