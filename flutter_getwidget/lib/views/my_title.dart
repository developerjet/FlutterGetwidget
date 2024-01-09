import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

class MyTitle extends GetView {
  const MyTitle(this.lable, {Key? key}) : super(key: key);

  final String lable;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, top: 30, bottom: 20),
      child: GFTypography(
        text: lable,
        type: GFTypographyType.typo5,
        dividerColor: const Color(0xFF19CA4B),
      ),
    );
  }
}