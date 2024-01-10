import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import '../views/my_title.dart';

class LoaderPage extends GetView<LoaderController> {
  const LoaderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('LoaderPage')),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const MyTitle("默认加载动画"),
              const GFLoader(),
              const MyTitle("设置Type"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const <Widget>[
                  GFLoader(
                    androidLoaderColor:
                        AlwaysStoppedAnimation<Color>(Colors.red),
                  ),
                  GFLoader(
                    androidLoaderColor:
                        AlwaysStoppedAnimation<Color>(Colors.amber),
                  ),
                  GFLoader(
                    androidLoaderColor:
                        AlwaysStoppedAnimation<Color>(Colors.green),
                  ),
                ],
              ),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const <Widget>[
                  GFLoader(
                    type: GFLoaderType.ios,
                  ),
                  GFLoader(
                    type: GFLoaderType.ios,
                    size: GFSize.SMALL,
                  ),
                  GFLoader(
                    type: GFLoaderType.ios,
                    size: GFSize.LARGE,
                  ),
                  GFLoader(
                    type: GFLoaderType.ios,
                    size: 60,
                  ),
                ],
              ),
              const Divider(),
              const GFLoader(
                type: GFLoaderType.circle,
              ),
              const Divider(),
              const GFLoader(
                type: GFLoaderType.square,
              ),
              const Divider(),
              const GFLoader(
                type: GFLoaderType.custom,
                child: Image(image: AssetImage("assets/images/loader.gif")),
              ),
              const MyTitle("其他属性"),
              const GFLoader(
                //类型
                type: GFLoaderType.square,
                // type: GFLoaderType.android,
                //子元素，用来自定义加载动画
                // child: Image(image: AssetImage("assets/images/loader.gif")),
                //动画的持续时间，仅对circle和square生效
                duration: Duration(seconds: 2),
                //在circle和square类型时，定义第二个点的颜色
                loaderColorTwo: Colors.amber,
                //在circle和square类型时，定义第三个点的颜色
                loaderColorThree: Colors.black,
                //定义android类型的动画类型
                androidLoaderColor: AlwaysStoppedAnimation<Color>(Colors.red),
                //android类型时笔画的宽度
                loaderstrokeWidth: 10.0,
              ),
            ],
          ),
        )));
  }
}

class LoaderController {}
