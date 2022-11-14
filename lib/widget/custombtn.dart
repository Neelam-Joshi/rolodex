import 'package:flutter/material.dart';
import 'package:rolodex/utils/constants.dart';
import 'package:rolodex/widget/getText.dart';

Widget customBtn(String title, Function() onTap) {
  return InkWell(
    onTap: onTap,
    child: Container(
      height: 47,
      width: double.infinity,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: kBtnColor,
        boxShadow: const [
          BoxShadow(
              offset: Offset(0, 4),
              blurRadius: 4,
              spreadRadius: 0,
              color: Color(0xff5B6571))
        ],
        borderRadius: BorderRadius.circular(14),
      ),
      child: getText(title, 18, FontWeight.w700, kWhiteColor, poppinsBold),
    ),
  );
}
