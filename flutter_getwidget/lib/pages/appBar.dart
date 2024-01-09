import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:get/get.dart';

class AppBarPage extends StatefulWidget {
  const AppBarPage({super.key});

  @override
  _AppBarPageState createState() => _AppBarPageState();
}

class _AppBarPageState extends State<AppBarPage>
    with SingleTickerProviderStateMixin {
  static const TextStyle appBarTitleStyle = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 16,
    letterSpacing: 0.2,
    color: GFColors.LIGHT,
  );

  static const avatarUrl =
      "https://img0.baidu.com/it/u=63277659,4286878048&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500";

  double _rating = 0;

  List list = [
    "Flutter",
    "React",
    "Ionic",
    "Xamarin",
  ];

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    // 添加监听器
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: GFAppBar(
      title: Text("Getwidget AppBar Page", style: appBarTitleStyle),
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      centerTitle: true,
      titleSpacing: 0,
      actions: [
        Padding(
            padding: EdgeInsets.only(right: 16),
            child: GFIconBadge(
                position: GFBadgePosition.topEnd(top: 5, end: -5),
                child: GFAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(avatarUrl),
                ),
                counterChild: GFBadge(
                  text: '6',
                  size: 22,
                  shape: GFBadgeShape.circle,
                ))),
      ],
    ));
  }
}
