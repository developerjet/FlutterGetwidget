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
        padding: EdgeInsets.all(10.0),
        child: Wrap(
          alignment: WrapAlignment.center,
          spacing: 15,
          runSpacing: 15,
          children: [            
            //使用GFTabs，组合GFTab和GFView使用
            GFTabs(
              height: 500,
              tabBarColor: Colors.orange,
              tabBarHeight: 40,
              indicatorColor: Colors.red,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              indicatorWeight: 4, //指示器的厚度
              //indicatorSize: TabBarIndicatorSize.tab, //下横线更加label还是根据tab计算大小
              length: 3,
              initialIndex: 0, //默认索引
              // shape: StadiumBorder(), //Tab栏的形状
              tabs: const [
                Tab(text: "文章"),
                Tab(text: "专题"),
                Tab(text: "分享"),
              ],
              tabBarView: GFTabBarView(controller: tabControllerSmall, children: [
                Container(color: Colors.teal),
                Container(color: Colors.red),
                Container(color: Colors.green),
              ]),
              controller: tabControllerSmall,
            )
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
