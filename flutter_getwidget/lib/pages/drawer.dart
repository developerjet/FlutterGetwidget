// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

class DrawerPage extends GetView {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DrawerPage'),
        leading: BackButton(),
      ),
      body: SafeArea(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: const [
          Text('点上边的图标看看效果'),
          Icon(Icons.north),
          SizedBox(width: 15),
        ],
      )),
      endDrawer: GFDrawer(
        //z轴高度
        elevation: 5,
        //背景图
        // backgroundImage: AssetImage('assets/background.png'),
        color: Colors.white,
        //背景滤镜，会应用给backgroundImage属性，对color属性无效
        // colorFilter: ColorFilter.mode(Colors.blue, BlendMode.modulate),
        //渐变颜色，backgroundImage有值时无效
        // gradient: const LinearGradient(colors: [Colors.red, Colors.blue]),
        child: ListView(
          children: <Widget>[
            //头部显示区域
            GFDrawerHeader(
              //居中显示
              centerAlign: true,
              //头像
              currentAccountPicture: GFAvatar(
                radius: 80.0,
                backgroundImage: AssetImage('assets/avatar.png'),
              ),
              //其他组件，在右上角显示
              otherAccountsPictures: const [
                Image(
                  image: AssetImage('assets/background.png'),
                  fit: BoxFit.cover,
                ),
                GFAvatar(
                  child: Text("A"),
                )
              ],
              //装饰器
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Colors.red, Colors.blue],
                ),
              ),
              //外边距
              margin: const EdgeInsets.all(0.0),
              //关闭按钮
              closeButton: GFIconButton(
                icon: const Icon(
                  Icons.keyboard_arrow_left,
                  color: Colors.white,
                  size: GFSize.LARGE,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                type: GFButtonType.transparent,
              ), //子元素，在头像下方显示。
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text('user name'),
                  Text('user@userid.com'),
                ],
              ),
            ),
            GFAccordion(
              title: "系统设置",
              expandedTitleBackgroundColor: Colors.white,
              contentChild: Column(
                children: <Widget>[
                  ListTile(
                    title: Text("账户"),
                    trailing: Icon(Icons.arrow_right),
                    onTap: () {
                      // Get.toNamed('/account');
                    },
                  ),
                  ListTile(
                    title: Text("设置"),
                    trailing: Icon(Icons.arrow_right),
                    onTap: () {
                      // Get.toNamed('/setting');
                    },
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('我的主页'),
            ),
            Divider(),
            ListTile(
              leading: Icon(
                Icons.logout,
                color: Colors.red,
              ),
              title: Text('退出登录'),
              textColor: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
