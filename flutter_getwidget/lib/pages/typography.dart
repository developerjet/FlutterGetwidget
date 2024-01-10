import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import '../views/my_title.dart';

class TypographyPage extends GetView {
  const TypographyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('TypographyPage')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const MyTitle("文字排版"),
              ...GFTypographyType.values.map(
                (e) => Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    GFTypography(
                      //标题文字
                      text: '$e',
                      //标题类型，typo1-typo6一共六种
                      type: e,
                      //文字颜色
                      textColor: Colors.lightBlue,
                      //标题字重
                      fontWeight: FontWeight.bold,
                      //标题前边的图标，所有组件都可以
                      icon: const GFAvatar(
                        backgroundImage: AssetImage(
                          'assets/avatar.png',
                        ),
                      ),
                      //分割线的圆角
                      dividerBorderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                      //分割线对齐的位置
                      dividerAlignment: Alignment.topLeft,
                      //分割线的颜色
                      dividerColor: Colors.red,
                      //分割线的高度
                      dividerHeight: 3,
                      //分割线的宽度，默认70
                      dividerWidth: 100,
                      //是否显示分割线，默认true
                      showDivider: true,
                      backgroundImage:
                          const AssetImage('assets/background.png'),
                      //背景图片的遮罩，默认const ColorFilter.mode(Colors.black54, BlendMode.darken),
                      backgroundImagecolorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.1), BlendMode.darken),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
