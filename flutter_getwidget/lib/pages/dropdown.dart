import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import '../views/my_title.dart';

class DropdownPage extends GetView<DropdownController> {
  const DropdownPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(DropdownController());

    var items = ["北京", "上海", "广州", "沈阳"];
    return Scaffold(
      appBar: AppBar(title: const Text('DropdownPage')),
      body: SafeArea(
        child: Column(
          children: [
            const MyTitle("基本下拉列表"),
            Obx(
              () => GFDropdown(
                value: controller.dropdownValue.value,
                onChanged: (val) {
                  controller.dropdownValue.value = val.toString();
                },
                items: items
                    .map((e) => DropdownMenuItem<String>(
                          value: e,
                          child: Text(e),
                        ))
                    .toList(),
              ),
            ),
            const MyTitle("下拉列表属性演示"),
            Obx(
              () => GFDropdown(
                //图标
                icon: Icon(Icons.location_city),
                //Z轴，影响阴影效果
                elevation: 30,
                //列表选择的值
                value: controller.dropdownValue2.value,
                //边框样式
                border: const BorderSide(
                  color: Colors.red,
                  width: 3.0,
                  style: BorderStyle.solid,
                ),
                //内边距
                padding: const EdgeInsets.all(10),
                //提示文本
                hint: const Text('请选择'),
                //禁用时的提示文本，当onChanged是null时，会提示这个文本内容。
                disabledHint: const Text('请选择'),
                //内容变更事件
                onChanged: (val) {
                  controller.dropdownValue2.value = val.toString();
                },
                //点击事件，可以理解是展开时发生
                onTap: () {
                  print("点击了");
                },
                //文本样式
                //默认为当前[Theme][Theme Data.TextTheme][TextTheme.subtitle1]值。
                style: const TextStyle(
                  color: Colors.red,
                ),
                underline: Container(
                  height: 2.0,
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.yellow,
                        width: 2.0,
                      ),
                    ),
                  ),
                ),
                // //禁用状态时图标的颜色
                // iconDisabledColor: Colors.yellow,
                // //启用状态时图标的颜色
                // iconEnabledColor: Colors.red,
                //图标的大小
                iconSize: 30,
                //降低按钮高度
                // isDense: true,
                //下拉列表的尺寸充填父级容器
                isExpanded: true,
                //下拉列表的高度
                itemHeight: 55,
                //获取焦点时的颜色
                focusColor: Colors.amber,
                //展开的列表背景色
                dropdownColor: Colors.blue,
                //组件的圆角样式
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                //组件的背景色，没展开的组件的颜色
                dropdownButtonColor: Colors.amber,
                //当页面没有其他组件有焦点时，该组件自动获得焦点
                autofocus: true,
                //焦点组件
                focusNode: null,
                items: items
                    .map((e) => DropdownMenuItem<String>(
                          value: e,
                          child: Text(e),
                        ))
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DropdownController {
  var dropdownValue = "北京".obs;
  Rx<String?> dropdownValue2 = Rx(null);
}
