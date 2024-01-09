import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class AvatarPage extends StatefulWidget {
  const AvatarPage({super.key});

  @override
  _AvatarPageState createState() => _AvatarPageState();
}

class _AvatarPageState extends State<AvatarPage> {
  final String avatarUrl =
      "https://img2.baidu.com/it/u=134462757,3007070562&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Getwidget Avatar Page"),
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(15),
        child: Wrap(
          spacing: 10.0,
          runSpacing: 10.0,
          children: [
            // 标准
            GFAvatar(
                backgroundImage: NetworkImage(avatarUrl),
                shape: GFAvatarShape.square),
            // 圆形
            GFAvatar(
                backgroundImage: NetworkImage(avatarUrl),
                shape: GFAvatarShape.circle),
            // 矩形
            GFAvatar(
                backgroundImage: NetworkImage(avatarUrl),
                shape: GFAvatarShape.square),
            // 分割线换行
            Divider(),
            GFAvatar(
                backgroundImage: NetworkImage(avatarUrl),
                shape: GFAvatarShape.square,
                size: GFSize.SMALL),
            GFAvatar(
                backgroundImage: NetworkImage(avatarUrl),
                shape: GFAvatarShape.square,
                size: GFSize.MEDIUM),
            GFAvatar(
                backgroundImage: NetworkImage(avatarUrl),
                shape: GFAvatarShape.square,
                size: GFSize.LARGE),
            // 分割线换行
            Divider(),
            // 头像+文字
            GFAvatar(
              backgroundImage: NetworkImage(avatarUrl),
              shape: GFAvatarShape.circle,
              size: GFSize.LARGE,
              child: Text("头像", style: TextStyle(color: Colors.red),),
            ),
          ],
        ),
      )),
    );
  }
}
