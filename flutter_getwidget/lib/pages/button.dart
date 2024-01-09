import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class ButtonPage extends StatefulWidget {
  const ButtonPage({super.key});

  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<ButtonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Getwidget Button Page"),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(10),
          child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                GFButton(
                  onPressed: () {},
                  text: "按钮1",
                  shape: GFButtonShape.pills,
                  type: GFButtonType.outline,
                ),
                GFButton(
                  onPressed: () {},
                  text: "按钮2",
                  color: GFColors.SUCCESS,
                  shape: GFButtonShape.square,
                  type: GFButtonType.outline2x,
                  fullWidthButton: true, //会撑满整个容器
                ),
                GFButton(
                  onPressed: () {},
                  text: "按钮3",
                  color: GFColors.DARK,
                  shape: GFButtonShape.standard,
                  type: GFButtonType.transparent,
                  blockButton: true,
                ),
                GFButton(
                  onPressed: () {},
                  text: "按钮4",
                  color: Colors.red,
                  shape: GFButtonShape.pills, //左右圆角
                  blockButton: true,
                ),
                // 图标按钮
                SizedBox(height: 20),
                GFIconButton(
                    icon: Icon(Icons.add),
                    shape: GFIconButtonShape.pills,
                    type: GFButtonType.outline,
                    onPressed: () {}),
                SizedBox(height: 20),
                GFIconButton(icon: Icon(Icons.settings), onPressed: () {}),
                SizedBox(height: 20),
                GFIconButton(
                    icon: Icon(Icons.phone_android),
                    shape: GFIconButtonShape.square,
                    type: GFButtonType.transparent, //透明
                    onPressed: () {}),
                SizedBox(height: 20),
                GFIconButton(
                    icon: Icon(Icons.computer_outlined), onPressed: () {}),
                SizedBox(height: 20),
                GFBadge(
                  text: "7",
                ),
                SizedBox(height: 20),
                GFBadge(
                  text: "8",
                  size: 40,
                  shape: GFBadgeShape.circle, //原型角标
                ),
                SizedBox(height: 20),
                GFBadge(
                  text: "9",
                  size: 40,
                  shape: GFBadgeShape.pills, //胶囊角标
                ),
                SizedBox(height: 20),
                GFIconBadge(
                  position: GFBadgePosition(top: -5, start: 70), //设置角标位置
                    child: GFButton(
                      onPressed: () {},
                      text: "GFButton",
                    ),
                    counterChild: GFBadge(
                      text: "99",
                      shape: GFBadgeShape.circle, //原型角标
                    ))
              ])),
        ));
  }
}
