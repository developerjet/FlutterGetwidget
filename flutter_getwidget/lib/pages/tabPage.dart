import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class TabPage extends StatefulWidget {
  const TabPage({Key? key}) : super(key: key);

  @override
  _TabPageState createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> with TickerProviderStateMixin {
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
        title: Text("Getwidget Tab Page"),
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Wrap(
          alignment: WrapAlignment.center,
          spacing: 8,
          runSpacing: 8,
          children: [
            PreferredSize(
                preferredSize: Size(double.infinity, 40),
                child: //使用GFTabs，组合GFTab和GFView使用
                    GFTabs(
                      tabBarColor: Colors.orange,
                      tabBarHeight: 50,
                      height: 700,
                  length: 3,
                  initialIndex: 1,
                  tabs: const [
                    Tab(text: "文章"),
                    Tab(text: "专题"),
                    Tab(text: "分享"),
                  ],
                  tabBarView:
                      GFTabBarView(controller: tabController, children: [
                    Container(color: Colors.teal),
                    Container(color: Colors.red),
                    Container(color: Colors.green),
                  ]),
                  controller: tabController,
                ))
          ],
        ),
      )),
    );
  }

  @override
  void dispose() {
    tabController.dispose();
    tabControllerSmall.dispose();

    super.dispose();
  }
}
