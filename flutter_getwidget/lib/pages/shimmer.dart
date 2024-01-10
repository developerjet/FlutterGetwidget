import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import '../views/my_title.dart';

class ShimmerPage extends GetView<ShimmerController> {
  const ShimmerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ShimmerPage')),
      body: SafeArea(
        child: Column(
          children: [
            const MyTitle("基本的闪光组件"),
            GFShimmer(
              child: Container(
                width: 200,
                height: 100,
                color: Colors.blue,
              ),
            ),
            const MyTitle("属性演示"),
            GFShimmer(
              //动画方向
              direction: GFShimmerDirection.leftToRight,
              //动画持续时间
              duration: const Duration(seconds: 1),
              //是否使用渐变色
              showGradient: true,
              //定义渐变色的样式，showGradient为true时才生效。
              //如果只有两种颜色，设置mainColor和secondaryColor就可以了
              gradient: const LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Colors.red,
                  Colors.blue,
                  Colors.green,
                ],
              ),
              //动画执行的次数，0是不限制。
              shimmerEffectCount: 0,
              //是否显示动画。
              showShimmerEffect: true,
              //主要的颜色
              mainColor: Colors.red,
              //第二种颜色
              secondaryColor: Colors.blue,
              child: createTemplate(context),
            ),
          ],
        ),
      ),
    );
  }

  Widget createTemplate(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 80,
            height: 80,
            color: Colors.white,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 6),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: 12,
                  color: Colors.white,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 2),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: 12,
                  color: Colors.white,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 2),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.25,
                  height: 12,
                  color: Colors.white,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ShimmerController {}
