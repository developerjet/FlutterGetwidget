import 'package:get/get.dart';

import '../home.dart';
import '../pages/toast.dart';
import '../pages/appBar.dart';
import '../pages/button.dart';
import '../pages/image.dart';
import '../pages/avatar.dart';
import '../pages/loading.dart';
import '../pages/card.dart';
import '../pages/tabPage.dart';
import '../pages/floating.dart';
import '../pages/carousel.dart';
import '../pages/multiselect.dart';
import '../pages/radiolisttitle.dart';
import '../pages/bottomsheet.dart';
import '../pages/stickyheader.dart';
import '../pages/typography.dart';
import '../pages/accordion.dart';
import '../pages/dropdown.dart';
import '../pages/rating.dart';
import '../pages/shimmer.dart';
import '../pages/search.dart';
import '../pages/toggle.dart';
import '../pages/drawer.dart';
import '../pages/alert.dart';

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
    GetPage(name: "/loading", page: () => const LoaderPage()),

    // 头像页面
    GetPage(name: "/avatar", page: () => const AvatarPage()),

    // 图片页面
    GetPage(name: "/image", page: () => const ImagePage()),

    // 卡片页面
    GetPage(name: "/card", page: () => const CardPage()),

    // Tab页面
    GetPage(name: "/tab", page: () => const TabPage()),

    // 浮动页面
    GetPage(name: "/floating", page: () => const FloatingPage()),

    // carousel页面
    GetPage(name: "/carousel", page: () => CarouselPage()),

    // multiselect页面
    GetPage(name: "/multiselect", page: () => MultiSelectPage()),

    // toast页面
    GetPage(name: "/toast", page: () => ToastPage()),

    // radiolisttitle页面
    GetPage(name: "/radiolisttitle", page: () => RadioListTitlePage()),

    // stickyheader页面
    GetPage(name: "/stickyheader", page: () => StickyHeaderPage()),

    // dropdown
    GetPage(name: "/dropdown", page: () => DropdownPage()),

    // toggle页面
    GetPage(name: "/toggle", page: () => TogglePage()),

    // typography页面
    GetPage(name: "/typography", page: () => TypographyPage()),

    // rating评分页面
    GetPage(name: "/rating", page: () => RatingPage()),

    // 搜索页面
    GetPage(name: "/search", page: () => SearchPage()),

    // 闪光页面
    GetPage(name: "/shimmer", page: () => ShimmerPage()),

    // accordion页面
    GetPage(name: "/accordion", page: () => AccordionPage()),

    // bottomsheet页面
    GetPage(name: "/bottomsheet", page: () => BottomSheetPage()),
    
    // bottomsheet页面
    GetPage(name: "/drawer", page: () => DrawerPage()),

    // alert页面
    GetPage(name: "/alert", page: () => AlertPage()),
  ];
}
