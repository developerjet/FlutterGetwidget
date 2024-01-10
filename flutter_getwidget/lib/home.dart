import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List items = [
    "getwidget button",
    "getwidget appbar",
    "getwidget loading",
    "getwidget avatar",
    "getwidget image",
    "getwidget card",
    "getwidget tab",
    "getwidget floating",
    "getwidget carousel",
    "getwidget multiselect",
    "getwidget toast",
    "getwidget radiolisttitle",
    "getwidget toggle",
    "getwidget typography",
    "getwidget stickyheader",
    "getwidget dropdown",
    "getwidget rating",
    "getwidget search",
    "getwidget shimmer",
    "getwidget accordion",
    "getwidget bottomsheet",
    "getwidget drawer",
    "getwidget alert",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("Getwidget UI"),
        ),
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4, // 每行显示的列数
            crossAxisSpacing: 5.0, // 列之间的间距
            mainAxisSpacing: 5.0, // 行之间的间距
          ),
          itemCount: items.length, // 项目数量
          itemBuilder: (context, index) {
            return InkWell(child: Container(
              color: Colors.blueAccent,
              child: Center(
                child: Text(items[index], textAlign: TextAlign.center,),
              ),
            ),onTap: () {
              _handlerTapAction(index);
            },
            );
          }
        ));
  }

  _handlerTapAction(int index) {
    if (index == 0) {
      Get.toNamed("/button");
    } else if (index == 1) {
      Get.toNamed("/appBar");
    } else if (index == 2) {
      Get.toNamed("/loading");
    } else if (index == 3) {
      Get.toNamed("/avatar");
    } else if (index == 4) {
      Get.toNamed("/image");
    } else if (index == 5) {
      Get.toNamed("/card");
    } else if (index == 6) {
      Get.toNamed("/tab");
    } else if (index == 7) {
      Get.toNamed("/floating");
    } else if (index == 8) {
      Get.toNamed("/carousel");
    } else if (index == 9) {
      Get.toNamed("/multiselect");
    } else if (index == 10) {
      Get.toNamed("/toast");
    } else if (index == 11) {
      Get.toNamed("/radiolisttitle");
    } else if (index == 12) {
      Get.toNamed("/toggle");
    } else if (index == 13) {
      Get.toNamed("/typography");
    } else if (index == 14) {
      Get.toNamed("/stickyheader");
    } else if (index == 15) {
      Get.toNamed("/dropdown");
    } else if (index == 16) {
      Get.toNamed("/rating");
    } else if (index == 17) {
      Get.toNamed("/search");
    } else if (index == 18) {
      Get.toNamed("/shimmer");
    } else if (index == 19) {
      Get.toNamed("/accordion");
    } else if (index == 20) {
      Get.toNamed("/bottomsheet");
    } else if (index == 21) {
      Get.toNamed("/drawer");
    } else if (index == 22) {
      Get.toNamed("/alert");
    }
  }
}
