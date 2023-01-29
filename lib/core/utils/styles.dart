import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:super_clean_app/core/utils/colors_manager.dart';

abstract class Styles {
  static  TextStyle textStyle11 = GoogleFonts.montserrat(
  textStyle:const TextStyle(
    fontSize: 11,
    fontWeight: FontWeight.normal,
  ));
  static  TextStyle textStyle25 = GoogleFonts.montserrat(
  textStyle:const TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.normal,
  ));
  static  TextStyle textStyle15 = GoogleFonts.montserrat(
  textStyle:const TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.normal,
  ));

  static  TextStyle textStyle16 = GoogleFonts.montserrat(
      textStyle:const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ));

  static  TextStyle textStyle14Ubuntu = GoogleFonts.ubuntu(
      textStyle:const TextStyle(
        fontSize: 14,
        color: ColorManager.white,
        fontWeight: FontWeight.bold,
      ));

  static  TextStyle textStyle10Ubuntu = GoogleFonts.ubuntu(
      textStyle:const TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.bold,
      ));
  static  TextStyle textStyle9Ubuntu = GoogleFonts.ubuntu(
      textStyle:const TextStyle(
        fontSize: 9,
        fontWeight: FontWeight.w900,
      ));
  static  TextStyle textStyle12Ubuntu = GoogleFonts.ubuntu(
      textStyle:const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.bold,
      ));

  static  TextStyle textStyle13Ubuntu = GoogleFonts.ubuntu(
      textStyle:const TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.w500,
        color: ColorManager.white,
      ));
  static  TextStyle textStyle11Ubuntu = GoogleFonts.ubuntu(
      textStyle:const TextStyle(
        fontSize: 11,
        fontWeight: FontWeight.w500,
        color: ColorManager.white,
      ));

  static  TextStyle textStyle10 = GoogleFonts.montserrat(
      textStyle:const TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w600,
      ));

  static  TextStyle textStyle19Ubuntu = GoogleFonts.ubuntu(
      textStyle:const TextStyle(
        fontSize: 19,
        color: ColorManager.white,
        fontWeight: FontWeight.bold,
      ));
  static  TextStyle textStyle13Nunito= GoogleFonts.nunito(
      textStyle:const TextStyle(
        fontSize: 13,
        color: ColorManager.white,
        fontWeight: FontWeight.w500,
      ));
}