import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class ImagePage extends StatefulWidget {
  const ImagePage({super.key});

  @override
  _ImagePageState createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  final String imageUrl1 =
      "https://img0.baidu.com/it/u=1956364049,2569870147&fm=253&fmt=auto&app=138&f=JPEG?w=889&h=500";

  final String imageUrl2 =
      "https://img2.baidu.com/it/u=55180549,3592974834&fm=253&fmt=auto&app=120&f=JPEG?w=1280&h=800";

  final String imageUrl3 =
      "https://img0.baidu.com/it/u=1643585262,3537611186&fm=253&fmt=auto&app=120&f=JPEG?w=1280&h=800";

  final String imageUrl4 =
      "https://img2.baidu.com/it/u=3371577422,1614211428&fm=253&fmt=auto&app=120&f=JPEG?w=1422&h=800";

  final String imageUrl5 =
      "https://lmg.jj20.com/up/allimg/4k/s/02/210925002HV016-0-lp.jpg";

  final String imageUrl6 =
      "https://img1.baidu.com/it/u=2813039977,3772632579&fm=253&fmt=auto&app=120&f=JPEG?w=1422&h=800";

  final String imageUrl7 =
      "https://img0.baidu.com/it/u=1806943359,1676806607&fm=253&fmt=auto&app=120&f=JPEG?w=1422&h=800";

  final String imageUrl8 =
      "https://img0.baidu.com/it/u=3752697275,532301071&fm=253&fmt=auto&app=120&f=JPEG?w=1422&h=800";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Getwidget Image Page"),
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(15),
        child: SingleChildScrollView(
            child: Wrap(
          spacing: 10.0,
          runSpacing: 10.0,
          children: [
            GFImageOverlay(
              image: NetworkImage(imageUrl1),
              height: 200,
            ),
            GFImageOverlay(
              image: NetworkImage(imageUrl2),
              alignment: Alignment.center,
              height: 120,
            ),
            GFImageOverlay(
              image: NetworkImage(imageUrl3),
              alignment: Alignment.center,
              padding: EdgeInsets.fromLTRB(20, 100, 20, 0),
              child: Text("可以添加图片文字描述", style: TextStyle(color: Colors.black)),
            ),
            GFImageOverlay(
              image: NetworkImage(imageUrl4),
              width: 120,
              height: 80,
              boxFit: BoxFit.fill, //填充模式
              borderRadius: BorderRadius.circular(12), //设置边角
            ),
            GFImageOverlay(
              image: NetworkImage(imageUrl5),
              width: 80,
              height: 80,
              boxFit: BoxFit.fill, //填充模式
              borderRadius: BorderRadius.circular(40), //圆形
            ),
            GFImageOverlay(
              image: NetworkImage(imageUrl6),
              width: 100,
              height: 100,
              boxFit: BoxFit.fill, //填充模式
              borderRadius: BorderRadius.circular(50), //圆形
              border: Border.all(color: Colors.red, width: 2.0),
            ),
            GFImageOverlay(
              image: NetworkImage(imageUrl7),
              alignment: Alignment.center,
              height: 120,
            ),
            GFImageOverlay(
              image: NetworkImage(imageUrl8),
              alignment: Alignment.center,
              height: 200,
            ),
          ],
        )),
      )),
    );
  }
}
