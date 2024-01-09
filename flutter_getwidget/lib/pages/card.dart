import 'package:flutter/material.dart';
import 'package:flutter_getwidget/views/my_title.dart';
import 'package:getwidget/getwidget.dart';
import '../views/my_title.dart';

class CardPage extends StatefulWidget {
  const CardPage({super.key});

  @override
  _CardPageState createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  final String avatarUrl1 =
      "http://img.duoziwang.com/2019/02/03181323314340.jpg";

  final String avatarUrl2 =
      "http://img.touxiangwu.com/zb_users/upload/2022/10/202210031664761724758829.jpg";

  final String avatarUrl3 =
      "https://img1.baidu.com/it/u=144382788,380057190&fm=253&fmt=auto&app=138&f=JPEG?w=520&h=463";

  final String avatarUrl4 =
      "https://img2.baidu.com/it/u=1123023115,3606737868&fm=253&fmt=auto&app=138&f=JPEG?w=200&h=200";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Getwidget Card Page"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              MyTitle("个人信息"),
              GFCard(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(
                  top: 0,
                  left: 16,
                  right: 16,
                  bottom: 16,
                ),
                title: GFListTile(
                  title: Text("张学友"),
                  subTitle: Text('男, 62岁'),
                ),
                showImage: true,
                image: Image.network('https://bkimg.cdn.bcebos.com/pic/95eef01f3a292df53273256ab5315c6034a87319'),
                content: Text(
                    "张学友是一位华语乐坛的传奇歌手，以其宽广的音域和深情的歌唱风格而备受喜爱。他也涉足电影行业，凭借其在电影中的表现赢得了多个奖项。"),
              ),
              GFCard(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(
                  top: 0,
                  left: 16,
                  right: 16,
                  bottom: 16,
                ),
                title: GFListTile(
                  title: Text("刘德华"),
                  subTitle: Text('男, 61岁'),
                  avatar: GFAvatar(backgroundImage: NetworkImage(avatarUrl2)),
                ),
                content: Text(
                    "刘德华以其出色的歌唱才华和电影演技而受到推崇。他是华语乐坛的重要人物之一，同时在演艺圈也取得了显著的成就。"),
              ),
              GFCard(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(
                  top: 0,
                  left: 16,
                  right: 16,
                  bottom: 16,
                ),
                title: GFListTile(
                  title: Text("郭富城"),
                  subTitle: Text('男, 57岁'),
                  avatar: GFAvatar(backgroundImage: NetworkImage(avatarUrl3)),
                ),
                content: Text(
                    "郭富城是香港乐坛的重要代表之一，以其多才多艺和在影坛的成功而受到尊敬。他在音乐、电影和商业领域都有卓越的成就"),
              ),
              GFCard(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(
                  top: 0,
                  left: 16,
                  right: 16,
                  bottom: 16,
                ),
                title: GFListTile(
                  title: Text("黎明"),
                  subTitle: Text('男, 60岁'),
                  avatar: GFAvatar(backgroundImage: NetworkImage(avatarUrl4)),
                ),
                content: Text(
                    "黎明（Leon Lai），全名黎德华，是香港著名的歌手、演员和制片人。他于1966年12月11日出生在中国广东省广州市。黎明在华语乐坛和影坛都有着卓越的成就，被广泛认为是香港娱乐圈的重要人物之一。"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
