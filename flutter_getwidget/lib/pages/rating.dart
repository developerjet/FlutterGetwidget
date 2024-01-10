import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

class RatingPage extends GetView<RatingPageController> {
  const RatingPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(RatingPageController());
    return Scaffold(
      appBar: AppBar(title: const Text('RatingPage')),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Obx(
              () => GFRating(
                //分值
                value: controller.userRating,
                //一共几个评分
                itemCount: 5,
                //已得分的评分图标颜色
                color: GFColors.DARK,
                //不得分的评分图标颜色
                borderColor: GFColors.ALT,
                //评分图标尺寸
                size: GFSize.LARGE,
                //如果为true，则允许对评分进行一半评级。默认true
                allowHalfRating: true,
                //充填图标样式
                filledIcon: const Icon(
                  Icons.star,
                  color: GFColors.PRIMARY,
                  size: GFSize.MEDIUM,
                ),
                //一半评级的图标样式
                halfFilledIcon: const Icon(
                  Icons.star_half,
                  color: GFColors.PRIMARY,
                  size: GFSize.MEDIUM,
                ),
                // 不得分的评分图标样式
                defaultIcon: const Icon(
                  Icons.star_outline,
                  color: GFColors.PRIMARY,
                  size: GFSize.MEDIUM,
                ),
                //评分之间的间距
                spacing: 5,
                //是否显示评分输入框
                showTextForm: true,
                //评分输入框的后缀图标,widget的类型，可以是任何元素。
                //定义inputDecorations后无效。
                suffixIcon: const Icon(Icons.favorite),
                //得分控制器
                controller: controller.ratingController,
                //评分输入框的装饰器
                inputDecorations: InputDecoration(
                  labelText: '评分',
                  labelStyle: const TextStyle(color: GFColors.PRIMARY),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                //输入框外边距
                margin: const EdgeInsets.all(8.0),
                //输入框内边距
                padding: const EdgeInsets.all(8.0),
                //分值变化回调
                onChanged: (value) {
                  //GetWidget拖动时虽然允许进行一半的评级，但是计算方式不准确，拖动不准确，所以这里把value设置为0.5
                  //模拟器上测试拖动是有延时的，真机未测试。
                  int t = value.truncate();
                  //取value中小数点后边第一位数字
                  int f = (value * 10).truncate() % 10;
                  if (f >= 5) {
                    value = t + 0.5;
                  } else {
                    value = t.toDouble();
                  }
                  controller.userRating = value;
                  controller.ratingController.text = value.toString();
                },
              ),
            ),
            const Divider(),
            GFRating(
              onChanged: (value) {},
              //分值
              value: 3.4,
              //一共几个评分
              itemCount: 5,
              //已得分的评分图标颜色
              color: Colors.red,
              //不得分的评分图标颜色
              borderColor: Colors.red,
              //评分图标尺寸
              size: GFSize.LARGE,
            ),
            GFRating(
              onChanged: (value) {},
              //分值
              value: 3.4,
              //一共几个评分
              itemCount: 5,
              //已得分的评分图标颜色
              color: Colors.green,
              //不得分的评分图标颜色
              borderColor: Colors.green,
            ),
            GFRating(
              onChanged: (value) {},
              //分值
              value: 3.4,
              //一共几个评分
              itemCount: 5,
              //已得分的评分图标颜色
              color: Colors.orange,
              //不得分的评分图标颜色
              borderColor: Colors.orange,
              //评分图标尺寸
              size: GFSize.SMALL,
            ),
          ],
        ),
      )),
    );
  }
}

class RatingPageController extends GetxController {
  late TextEditingController ratingController;
  final _userRating = 3.5.obs;
  get userRating => _userRating.value;
  set userRating(value) => _userRating.value = value;
  @override
  void onInit() {
    super.onInit();
    ratingController = TextEditingController(text: userRating.toString());
    ratingController.addListener(() {
      var con = Get.put(RatingPageController());
      try {
        con.userRating = double.parse(ratingController.text);
      } on FormatException catch (e) {
        con.userRating = 0.0;
      }
    });
  }

  @override
  void onClose() {
    super.onClose();
    ratingController.dispose();
  }
}
