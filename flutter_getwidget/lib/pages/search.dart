import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import '../views/my_title.dart';

class SearchPage extends GetView<SearchController> {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(SearchController());

    return Scaffold(
      appBar: AppBar(title: Text('SearchPage')),
      body: SafeArea(
        child: Column(
          children: [
            const MyTitle("基本的搜索款"),
            GFSearchBar(
              //一个集合对象，保存text或者widget数据，用户搜索的参考列表，或者数据源。
              searchList: controller.list,
              //定义搜索列表的生成器，用于生成搜索列表。
              overlaySearchListItemBuilder: (item) {
                return GFListTile(titleText: item.toString());
              },
              //定义搜索数据的方法。
              searchQueryBuilder: (query, list) {
                return list
                    .where((element) => element
                        .toString()
                        .toUpperCase()
                        .contains(query.toUpperCase()))
                    .toList();
              },
            ),
            GFSearchBar(
              //一个集合对象，保存text或者widget数据，用户搜索的参考列表，或者数据源。
              searchList: controller.list,
              //定义搜索列表的生成器，用于生成搜索列表。
              overlaySearchListItemBuilder: (dynamic item) => Container(
                padding: const EdgeInsets.all(8),
                child: Text(
                  item,
                  style: const TextStyle(fontSize: 18),
                ),
              ),
              //定义搜索数据的方法。
              searchQueryBuilder: (query, list) => list.where((item) {
                return item!
                    .toString()
                    .toLowerCase()
                    .contains(query.toLowerCase());
              }).toList(),
              //定义搜索框的样式
              searchBoxInputDecoration: InputDecoration(
                labelText: '输入搜索值',
                //默认文本的样式
                labelStyle: const TextStyle(color: Colors.black26),
                //获得焦点时的边框样式
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.greenAccent),
                  borderRadius: BorderRadius.circular(25),
                ),
                //前缀图标
                prefixIcon: const Icon(
                  Icons.search,
                  color: Colors.black26,
                ),
                //默认启动状态的边框样式
                enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(50)),
              ),
              //当搜索框内容被选中后，是否隐藏搜索框。
              hideSearchBoxWhenItemSelected: false,
              //定义搜索列表的容器高度
              overlaySearchListHeight: 200,
              noItemsFoundWidget: const SizedBox(
                height: 50,
                child: Text(
                  '没有你要的结果',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.black45,
                  ),
                ),
              ),
              //搜索结果被选中时的回调
              onItemSelected: (dynamic item) {
                print(item);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class SearchController {
  List list = [
    'Java',
    'Dart',
    'Flutter',
    'Vue',
    'JavaScript',
    'C++',
    'Springboot',
    'GetWidget',
  ];
}
