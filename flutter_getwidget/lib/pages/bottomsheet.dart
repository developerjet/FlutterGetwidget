import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

class BottomSheetPage extends GetView<BottomSheetController> {
  const BottomSheetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(BottomSheetController());

    return Scaffold(
      appBar: AppBar(title: const Text('BottomSheetPage')),
      body: SafeArea(
        child: Column(
          children: [
            GFButton(
              onPressed: () {
                //展开底部弹出框
                controller.bottomSheetController.isBottomSheetOpened
                    ? controller.bottomSheetController.hideBottomSheet()
                    : controller.bottomSheetController.showBottomSheet();
              },
              text: "切换底部弹出框",
            ),
          ],
        ),
      ),
      //定义一个基本的底部弹出框
      bottomSheet: GFBottomSheet(
        //主体内容
        contentBody: Container(
          alignment: Alignment.topLeft,
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Image.asset(
                'assets/images/cake2.jpg',
                fit: BoxFit.fill,
              ),
            )
          ]),
        ),
        //控制器
        controller: controller.bottomSheetController,
        //最小内容高度，不弹出的时候显示的高度。必须>=0,默认是0.
        //enableExpandableContent为false时才生效。
        minContentHeight: 0,
        //最大内容高度，弹出的时候显示的高度。必须>=0，默认是300.
        maxContentHeight: 360,
        //弹出框的头部信息，在未展开时就显示的内容。
        stickyHeader: Container(
          decoration: const BoxDecoration(
              color: Colors.grey,
              boxShadow: [BoxShadow(color: Colors.black45, blurRadius: 0)]),
          child: const GFListTile(
            avatar: GFAvatar(
              backgroundImage: AssetImage('assets/avatar.png'),
            ),
            titleText: '玩技术的雷哥',
            subTitleText: 'B站新人一枚',
          ),
        ),
        //弹出框高度
        stickyHeaderHeight: 100.0,
        //z轴高度
        elevation: 30.0,
        //动画时间，int类型，单位是毫秒
        animationDuration: 300,
        //是否允许contentBody使用expand，默认false
        //如果为true，minContentHeight就无效了。动画展开效果也受到影响。
        enableExpandableContent: false,
        //弹出框内容
        stickyFooter: Container(
          height: 40,
          color: Colors.orange,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [Text('弹出框尾部信息')]),
        ),
        //弹出框高度
        stickyFooterHeight: 40.0,
      ),
    );
  }
}

class BottomSheetController extends GetxController {
  GFBottomSheetController bottomSheetController = GFBottomSheetController();
}
