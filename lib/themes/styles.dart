import 'package:flutter/painting.dart';
import 'package:flutter_responsive_web/themes/color.dart';
import 'package:google_fonts/google_fonts.dart';

// Simple
TextStyle headlineTextStyle = GoogleFonts.lato(
    textStyle: const TextStyle(
        fontSize: 65, color: textPrimary, letterSpacing: 1.95, fontWeight: FontWeight.bold));

TextStyle headlineTextStyleMobile = GoogleFonts.lato(
    textStyle: const TextStyle(
        fontSize: 42, color: textPrimary, letterSpacing: 1.26, fontWeight: FontWeight.bold));

TextStyle headlineSecondaryTextStyle = GoogleFonts.lato(
    textStyle: const TextStyle(fontSize: 20, color: textPrimary, fontWeight: FontWeight.w300));

TextStyle subtitleTextStyle = GoogleFonts.lato(
    textStyle: const TextStyle(fontSize: 14, color: textSecondary, letterSpacing: 1));

TextStyle bodyTextStyle =
    GoogleFonts.lato(textStyle: const TextStyle(fontSize: 14, color: textPrimary));

TextStyle buttonTextStyle = GoogleFonts.lato(
    textStyle: const TextStyle(fontSize: 14, color: textPrimary, letterSpacing: 1));

TextStyle headlineListItemStyle = GoogleFonts.lato(
    textStyle: const TextStyle(fontSize: 130, color: textListItem, letterSpacing: 1));

TextStyle headlineListItemSubTitleStyle = GoogleFonts.lato(
    textStyle: const TextStyle(
        fontSize: 30, color: textListItem, letterSpacing: 1, fontWeight: FontWeight.w500));

TextStyle headlineSectionTitleStyle = GoogleFonts.lato(
    textStyle: const TextStyle(
        fontSize: 40, color: textListItem, letterSpacing: 1, fontWeight: FontWeight.w700));

TextStyle headlineSectionTitleStyleMobile = GoogleFonts.lato(
    textStyle: const TextStyle(fontSize: 21, color: textListItem, fontWeight: FontWeight.w700));

TextStyle segmentSelectedStyle = GoogleFonts.lato(
    textStyle: const TextStyle(
        fontSize: 14, color: segmentSelectedTextColor, fontWeight: FontWeight.bold));

TextStyle segmentUnselectedStyle = GoogleFonts.lato(
    textStyle: const TextStyle(
        fontSize: 14, color: segmentUnSelectedTextColor, fontWeight: FontWeight.bold));
