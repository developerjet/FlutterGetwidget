import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/components/dropdown/gf_multiselect.dart';
import 'package:getwidget/getwidget.dart';
import 'package:getwidget/types/gf_checkbox_type.dart';
import '../views/my_title.dart';

class MultiSelectPage extends GetView<MultiSelectController> {
  const MultiSelectPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(MultiSelectController());
    return Scaffold(
        appBar: AppBar(title: Text('MultiSelectPage')),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            children: [
              const MyTitle('基本的下拉列表'),
              GFMultiSelect(
                items: controller.list,
                onSelect: (val) {
                  print(val);
                },
                size: 10,
              ),
              const MyTitle('美化一下'),
              GFMultiSelect(
                items: controller.list,
                onSelect: (val) {
                  print(val);
                },
                dropdownTitleTileText: "你都会哪些开发语言？",
                submitButton: const Text('确定'),
                cancelButton: const Text('取消'),
                type: GFCheckboxType.basic,
                activeBgColor: GFColors.PRIMARY,
                inactiveBorderColor: GFColors.PRIMARY,
                dropdownTitleTileBorder:
                    Border.all(color: Colors.grey, width: 1),
                dropdownTitleTileBorderRadius: BorderRadius.circular(5),
                hideDropdownUnderline: true,
                activeIcon: const Icon(
                  Icons.done,
                  color: Colors.white,
                ),
                selected: true,
              ),
            ],
          ),
        )));
  }
}

class MultiSelectController extends GetxController {
  List list = ['Java', 'Dart', 'Ruby', 'Python', 'C++', 'C#', 'JavaScript'];
}
