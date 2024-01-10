import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

class StickyHeaderPage extends GetView<StickyHeaderController> {
  const StickyHeaderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(StickyHeaderController());
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Sticky Header',
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GFStickyHeader(
              //标题内容，会被固定
              stickyContent: Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(bottom: 10),
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 255, 227, 161),
                ),
                child: const Text('热门推荐'),
              ),
              //内容组件
              content: buildList(4, context),
            ),
            GFStickyHeader(
              stickyContent: Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(bottom: 10),
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 255, 227, 161),
                ),
                child: const Text('影视'),
              ),
              content: buildList(4, context),
            ),
            GFStickyHeader(
              stickyContent: Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(bottom: 10),
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 255, 227, 161),
                ),
                child: const Text('追番'),
              ),
              content: buildList(4, context),
            ),
            GFStickyHeader(
              stickyContent: Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(bottom: 10),
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 255, 227, 161),
                ),
                child: const Text('直播'),
              ),
              content: buildList(4, context),
            ),
            GFStickyHeader(
              stickyContent: Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(bottom: 10),
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 255, 227, 161),
                ),
                child: const Text('共同抗疫'),
              ),
              content: buildList(4, context),
            ),
          ],
        ),
      ),
    );
  }

  //构建组件列表
  Widget buildList(int count, BuildContext context) {
    //循环count次
    List<Widget> list = [];
    for (var i = 0; i < count; i++) {
      // list.add(buildOne());
      Widget widget = buildOne();
      list.add(Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        width: MediaQuery.of(context).size.width * 0.45,
        child: widget,
      ));
    }

    return Wrap(
      spacing: 12,
      runSpacing: 12,
      children: [...list],
    );
  }

  ///构建每一个小组件
  Widget buildOne() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Image.asset('assets/images/cake${Random().nextInt(4)}.jpg'),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '2022年什么变成语言最有前途？编程语言流行趋势分析。',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    Icon(
                      Icons.thumb_up_alt_outlined,
                      size: 16,
                      color: Colors.black26,
                    ),
                    Text(
                      '玩技术的雷哥',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.black26,
                      ),
                    ),
                  ],
                ),
                const Icon(
                  Icons.more_vert,
                  color: Colors.black26,
                  size: 16,
                ),
              ],
            )
          ],
        ),
      ),
    ]);
  }
}

class StickyHeaderController extends GetxController {}
