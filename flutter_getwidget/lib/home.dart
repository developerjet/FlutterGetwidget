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
    "getwidget tab"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("Getwidget UI"),
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(items[index]),
              trailing: Icon(Icons.arrow_right),
              onTap: () {
                print("Tapped on: ${items[index]}");
                _handlerTapAction(index);
              },
            );
          },
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
    }else if (index == 6) {
      Get.toNamed("/tab");
    }
  }
}
