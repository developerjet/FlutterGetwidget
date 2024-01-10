import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import '../views/my_title.dart';

class TogglePage extends GetView {
  const TogglePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('TogglePage')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Wrap(
            spacing: 8.0,
            runSpacing: 8.0,
            children: [
              const MyTitle('Android样式'),
              GFToggle(
                onChanged: (val) {},
                value: true,
                type: GFToggleType.android,
              ),
              GFToggle(
                onChanged: (val) {},
                value: true,
                type: GFToggleType.android,
                enabledTrackColor: GFColors.ALT,
              ),
              GFToggle(
                onChanged: (val) {},
                value: true,
                type: GFToggleType.android,
                enabledTrackColor: GFColors.SUCCESS,
              ),
              GFToggle(
                onChanged: (val) {},
                value: true,
                type: GFToggleType.android,
                enabledTrackColor: GFColors.DANGER,
              ),
              GFToggle(
                onChanged: (val) {},
                value: true,
                type: GFToggleType.android,
                enabledTrackColor: GFColors.PRIMARY,
              ),
              const MyTitle('IOS样式'),
              GFToggle(
                onChanged: (val) {},
                value: true,
                type: GFToggleType.ios,
              ),
              GFToggle(
                onChanged: (val) {},
                value: true,
                type: GFToggleType.ios,
                enabledTrackColor: GFColors.ALT,
              ),
              GFToggle(
                onChanged: (val) {},
                value: true,
                type: GFToggleType.ios,
                enabledTrackColor: GFColors.SUCCESS,
              ),
              GFToggle(
                onChanged: (val) {},
                value: true,
                type: GFToggleType.ios,
                enabledTrackColor: GFColors.DANGER,
              ),
              GFToggle(
                onChanged: (val) {},
                value: true,
                type: GFToggleType.ios,
                enabledTrackColor: GFColors.PRIMARY,
              ),
              const MyTitle('square样式'),
              GFToggle(
                onChanged: (val) {},
                value: true,
                type: GFToggleType.square,
              ),
              GFToggle(
                onChanged: (val) {},
                value: true,
                type: GFToggleType.square,
                enabledTrackColor: GFColors.ALT,
              ),
              GFToggle(
                onChanged: (val) {},
                value: true,
                type: GFToggleType.square,
                enabledTrackColor: GFColors.SUCCESS,
              ),
              GFToggle(
                onChanged: (val) {},
                value: true,
                type: GFToggleType.square,
                enabledTrackColor: GFColors.DANGER,
              ),
              GFToggle(
                onChanged: (val) {},
                value: true,
                type: GFToggleType.square,
                enabledTrackColor: GFColors.PRIMARY,
              ),
              const MyTitle('custom样式'),
              GFToggle(
                //切换事件
                onChanged: (val) {
                  print(val);
                },
                //默认状态
                value: true,
                //样式
                type: GFToggleType.custom,
                //启动时的背景色
                enabledTrackColor: GFColors.ALT,
                //启动是的滑块颜色
                enabledThumbColor: GFColors.SUCCESS,
                //禁用时的背景色
                disabledTrackColor: GFColors.DANGER,
                //禁用时的滑块颜色
                disabledThumbColor: GFColors.ALT,
                //启动时文字内容
                enabledText: "开",
                //禁用时文字内容
                disabledText: "关",
                //盒子形状
                boxShape: BoxShape.rectangle,
                //边框半径
                borderRadius: BorderRadius.circular(5.0),
                //切换动画时长
                duration: const Duration(seconds: 3),
              ),
              GFToggle(
                //切换事件
                onChanged: (val) {
                  print(val);
                },
                //默认状态
                value: true,
                //样式
                type: GFToggleType.ios,
                //盒子形状
                boxShape: BoxShape.rectangle,
                //边框半径
                borderRadius: BorderRadius.circular(0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
