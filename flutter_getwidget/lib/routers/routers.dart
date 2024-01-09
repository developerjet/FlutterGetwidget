import 'package:get/get.dart';

import '../home.dart';
import '../pages/appBar.dart';
import '../pages/button.dart';
import '../pages/image.dart';
import '../pages/avatar.dart';
import '../pages/loading.dart';
import '../pages/card.dart';
import '../pages/tabPage.dart';

class AppPage {
  // 路由配置
  static final routers = [
    // 首页
    GetPage(name: "/", page: () => const MyHomePage()),

    // 按钮页面
    GetPage(name: "/button", page: () => const ButtonPage()),

    // AppBar页面
    GetPage(name: "/appBar", page: () => const AppBarPage()),

    // Loading页面
    GetPage(name: "/loading", page: () => const LoadingPage()),

    // 头像页面
    GetPage(name: "/avatar", page: () => const AvatarPage()),

    // 图片页面
    GetPage(name: "/image", page: () => const ImagePage()),

    // 卡片页面
    GetPage(name: "/card", page: () => const CardPage()),

    // Tab页面
    GetPage(name: "/tab", page: () => const TabPage()),
  ];
}
