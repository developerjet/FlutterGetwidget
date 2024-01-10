import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import '../views/my_title.dart';

class ToastPage extends GetView {
  const ToastPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ToastPage')),
      body: SafeArea(
        // child: GestureDetector(
        //     onTap: () => GFToast.showToast(
        //           'GetFlutter is an open source library that comes with pre-build 1000+ UI components.',
        //           context,
        //         ),
        //     child: Container(
        //       margin: const EdgeInsets.only(left: 15, right: 15, top: 20),
        //       padding: const EdgeInsets.all(5),
        //       height: 59.0,
        //       decoration: BoxDecoration(
        //           borderRadius: const BorderRadius.all(Radius.circular(7)),
        //           color: GFColors.DARK,
        //           boxShadow: [
        //             BoxShadow(
        //                 color: Colors.black.withOpacity(0.40), blurRadius: 5)
        //           ]),
        //       child: GFListTile(
        //           color: GFColors.DARK,
        //           title: const Text(
        //             'Show Toast',
        //             style: TextStyle(color: GFColors.WHITE),
        //           ),
        //           icon: Icon(
        //             CupertinoIcons.forward,
        //             color: GFColors.SUCCESS,
        //           )),
        //     )),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              children: [
                const MyTitle('Toast演示'),
                GFButton(
                    onPressed: () {
                      GFToast.showToast(
                        "默认的Toast",
                        context,
                      );
                    },
                    text: "默认的Toast"),
                GFButton(
                    onPressed: () {
                      GFToast.showToast(
                        "影片为《侏罗纪世界》系列的完结篇，故事的开篇设定在纳布拉尔岛被摧毁的四年后。如今，恐龙在世界各地与人类共同生活、共同捕猎。这一脆弱的平衡将重塑未来，并最终决定人类能否与史上最可怕生物共享这颗星球，并继续站在食物链的顶端。",
                        context,
                      );
                    },
                    text: "多行内容显示"),
                const MyTitle('不同位置展示'),
                ...GFToastPosition.values.map(
                  (e) => GFButton(
                      onPressed: () {
                        GFToast.showToast("显示在$e位置", context, toastPosition: e);
                      },
                      text: "${e.name}"),
                ),
                const MyTitle('自定义样式'),
                GFButton(
                    onPressed: () {
                      GFToast.showToast(
                        "您已经观看视频超过60分钟了，注意休息哦。",
                        context,
                        //展示的持续时间，单位是秒。
                        toastDuration: 10,
                        //展示的位置
                        toastPosition: GFToastPosition.TOP,
                        //背景色
                        backgroundColor: Colors.green,
                        //文字样式
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        //圆角大小
                        toastBorderRadius: 5.0,
                        //边线
                        border: Border.all(
                          color: Colors.red,
                          width: 2.0,
                        ),
                        // 尾部元素
                        trailing: GFIconButton(
                          icon: const Icon(
                            Icons.mood,
                            color: Colors.white,
                          ),
                          type: GFButtonType.transparent,
                          shape: GFIconButtonShape.circle,
                          onPressed: () {
                            print("版本更新");
                          },
                        ),
                      );
                    },
                    text: "自定义样式"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
