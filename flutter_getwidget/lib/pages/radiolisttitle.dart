import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

class RadioListTitlePage extends GetView<RadioListTitleController> {
  const RadioListTitlePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(RadioListTitleController());
    return Scaffold(
      appBar: AppBar(title: Text('RadioListTitlePage')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Obx(() => Column(children: [
                GFRadioListTile(
                  titleText: '主标题',
                  title: const Text('主标题'),
                  subTitleText: '副标题',
                  subTitle: const Text('副标题'),
                  position: GFPosition.start,
                  icon: const Icon(Icons.favorite),
                  size: 25,
                  activeBorderColor: Colors.green,
                  focusColor: Colors.green,
                  type: GFRadioType.basic,
                  value: 0,
                  groupValue: controller.groupValue.value,
                  onChanged: (val) {
                    controller.groupValue.value = val;
                  },
                  color: Colors.white,
                ),
                GFRadioListTile(
                  titleText: '主标题',
                  subTitleText: '副标题',
                  avatar: const GFAvatar(
                    backgroundImage: AssetImage('assets/avatar.png'),
                  ),
                  size: 25,
                  activeBorderColor: Colors.green,
                  focusColor: Colors.green,
                  type: GFRadioType.square,
                  value: 1,
                  groupValue: controller.groupValue.value,
                  onChanged: (val) {
                    controller.groupValue.value = val;
                  },
                ),
              ])),
        ),
      ),
    );
  }
}

class RadioListTitleController extends GetxController {
  var groupValue = 0.obs;
}
