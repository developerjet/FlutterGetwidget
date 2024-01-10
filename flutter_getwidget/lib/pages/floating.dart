import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class FloatingPage extends StatefulWidget {
  const FloatingPage({Key? key}) : super(key: key);

  @override
  _FloatingPageState createState() => _FloatingPageState();
}

class _FloatingPageState extends State<FloatingPage>
    with TickerProviderStateMixin {
  late TabController tabController;
  late TabController tabControllerSmall;

  @override
  void initState() {
    super.initState();

    tabController = TabController(length: 3, vsync: this);
    tabControllerSmall = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Getwidget Floating Page"),
      ),
      body: SingleChildScrollView(
          padding: EdgeInsets.all(10.0),
          child: SafeArea(
            child: Wrap(
              children: [
                GFFloatingWidget(
                    // 垂直偏移量
                    verticalPosition: 15,
                    // 水平偏移量
                    horizontalPosition: 30,

                    // 正文内容
                    body: Container(
                      child: Column(
                        children: [
                          Text("内容1内容1内容1内容1内容1内容1内容1内容1"),
                          Text("内容2内容2内容2内容2内容2内容2内容2内容2"),
                          Text("内容3内容3内容3内容3内容3内容3内容3内容3"),
                          Text("内容5内容5内容内容内容内容内容内容内容内容"),
                          Text("内容6内容6内容内容内容内容内容内容内容内容"),
                          Text("内容7内容7内容内容内容内容内容内容内容内容"),
                          Text("内容8内容8内容内容内容内容内容内容内容内容"),
                          Text("内容9内容9内容内容内容内容内容内容内容内容"),
                        ],
                      ),
                    ),
                    showBlurness: true, //是否模糊
                    blurnessColor: Colors.black12,
                    child: GFButton(
                      color: Colors.orange,
                      icon: Icon(Icons.add),
                      onPressed: () {},
                      child: Text("按钮"),
                    )),
              ],
            ),
          )),
      floatingActionButton:
          FloatingActionButton(child: Text("按钮"), onPressed: () {}),
    );
  }

  @override
  void dispose() {
    tabController.dispose();
    tabControllerSmall.dispose();

    super.dispose();
  }
}
