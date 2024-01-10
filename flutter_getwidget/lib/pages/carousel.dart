import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import '../views/my_title.dart';

class CarouselPage extends GetView {
  CarouselPage({Key? key}) : super(key: key);

  final List<String> imageList = [
    "assets/images/cake1.jpg",
    "assets/images/cake2.jpg",
    "assets/images/cake3.jpg",
    "assets/images/cake4.jpg",
  ];

  final List<String> networkImageList = [
    "https://cdn.pixabay.com/photo/2017/12/03/18/04/christmas-balls-2995437_960_720.jpg",
    "https://cdn.pixabay.com/photo/2017/12/13/00/23/christmas-3015776_960_720.jpg",
    "https://cdn.pixabay.com/photo/2019/12/19/10/55/christmas-market-4705877_960_720.jpg",
    "https://cdn.pixabay.com/photo/2019/12/20/00/03/road-4707345_960_720.jpg",
    "https://cdn.pixabay.com/photo/2019/12/22/04/18/x-mas-4711785__340.jpg",
    "https://cdn.pixabay.com/photo/2016/11/22/07/09/spruce-1848543__340.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Carousel 演示')),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Wrap(
            children: [
              const MyTitle('基础的跑马灯'),
              const GFCarousel(
                items: [
                  GFListTile(
                    color: GFColors.INFO,
                    titleText: "肖申克的救赎",
                    description: Text(
                        maxLines: 5,
                        overflow: TextOverflow.visible,
                        "一场谋杀案使银行家安迪（蒂姆•罗宾斯 Tim Robbins 饰）蒙冤入狱，谋杀妻子及其情人的指控将囚禁他终生。在肖申克监狱的首次现身就让监狱“大哥”瑞德（摩根•弗里曼 Morgan Freeman 饰）对他另眼相看。"),
                  ),
                  GFListTile(
                    color: GFColors.INFO,
                    titleText: "霸王别姬",
                    description: Text(
                        maxLines: 5,
                        overflow: TextOverflow.visible,
                        "段小楼（张丰毅）与程蝶衣（张国荣）是一对打小一起长大的师兄弟，两人一个演生，一个饰旦，一向配合天衣无缝，尤其一出《霸王别姬》，更是誉满京城，为此，两人约定合演一辈子《霸王别姬》"),
                  ),
                  GFListTile(
                    color: GFColors.INFO,
                    titleText: "阿甘正传",
                    description: Text(
                        maxLines: 5,
                        overflow: TextOverflow.visible,
                        "阿甘（汤姆·汉克斯 饰）于二战结束后不久出生在美国南方阿拉巴马州一个闭塞的小镇，他先天弱智，智商只有75，然而他的妈妈是一个性格坚强的女性，她常常鼓励阿甘“傻人有傻福”，要他自强不息。"),
                  ),
                  GFListTile(
                    color: GFColors.INFO,
                    titleText: "泰坦尼克号",
                    description: Text(
                        maxLines: 5,
                        overflow: TextOverflow.visible,
                        "1912年4月10日，号称 “世界工业史上的奇迹”的豪华客轮泰坦尼克号开始了自己的处女航，从英国的南安普顿出发驶往美国纽约。富家少女罗丝（凯特•温丝莱特）与母亲及未婚夫卡尔坐上了头等舱；另一边，放荡不羁的少年画家杰克（莱昂纳多·迪卡普里奥）也在码头的一场赌博中赢得了下等舱的船票。 "),
                  ),
                  GFListTile(
                    color: GFColors.INFO,
                    titleText: "这个杀手不太冷",
                    description: Text(
                        maxLines: 5,
                        overflow: TextOverflow.visible,
                        "里昂（让·雷诺饰）是名孤独的职业杀手，受人雇佣。一天，邻居家小姑娘马蒂尔达（纳塔丽·波特曼饰)敲开他的房门，要求在他那里暂避杀身之祸。原来邻居家的主人是警方缉毒组的眼线，只因贪污了一小包毒品而遭恶警（加里·奥德曼饰）杀害全家的惩罚。马蒂尔达得到里昂的留救，幸免于难，并留在里昂那里。里昂教小女孩使枪，她教里昂法文，两人关系日趋亲密，相处融洽。 "),
                  ),
                  GFListTile(
                    color: GFColors.INFO,
                    titleText: "美丽人生",
                    description: Text(
                        maxLines: 5,
                        overflow: TextOverflow.visible,
                        "犹太青年圭多（罗伯托·贝尼尼）邂逅美丽的女教师多拉（尼可莱塔·布拉斯基），他彬彬有礼的向多拉鞠躬：“早安！公主！”。历经诸多令人啼笑皆非的周折后，天遂人愿，两人幸福美满的生活在一起。 "),
                  ),
                ],
                height: 180, //高度设置
                hasPagination: true,
                autoPlay: true,
              ),
              const MyTitle('可以是多个合并在一起'),
              const GFItemsCarousel(
                //每行显示的组件数量，定义一屏显示的内容
                rowCount: 3,
                //每个组件的高度
                itemHeight: 220,
                //显示的子元素
                children: [
                  GFListTile(
                    color: GFColors.INFO,
                    titleText: "肖申克的救赎",
                    description: Text(
                        maxLines: 5,
                        overflow: TextOverflow.visible,
                        "一场谋杀案使银行家安迪（蒂姆•罗宾斯 Tim Robbins 饰）蒙冤入狱，谋杀妻子及其情人的指控将囚禁他终生。在肖申克监狱的首次现身就让监狱“大哥”瑞德（摩根•弗里曼 Morgan Freeman 饰）对他另眼相看。"),
                  ),
                  GFListTile(
                    color: GFColors.INFO,
                    titleText: "霸王别姬",
                    description: Text(
                        maxLines: 5,
                        overflow: TextOverflow.visible,
                        "段小楼（张丰毅）与程蝶衣（张国荣）是一对打小一起长大的师兄弟，两人一个演生，一个饰旦，一向配合天衣无缝，尤其一出《霸王别姬》，更是誉满京城，为此，两人约定合演一辈子《霸王别姬》"),
                  ),
                  GFListTile(
                    color: GFColors.INFO,
                    titleText: "阿甘正传",
                    description: Text(
                        maxLines: 5,
                        overflow: TextOverflow.visible,
                        "阿甘（汤姆·汉克斯 饰）于二战结束后不久出生在美国南方阿拉巴马州一个闭塞的小镇，他先天弱智，智商只有75，然而他的妈妈是一个性格坚强的女性，她常常鼓励阿甘“傻人有傻福”，要他自强不息。"),
                  ),
                  GFListTile(
                    color: GFColors.INFO,
                    titleText: "泰坦尼克号",
                    description: Text(
                        maxLines: 5,
                        overflow: TextOverflow.visible,
                        "1912年4月10日，号称 “世界工业史上的奇迹”的豪华客轮泰坦尼克号开始了自己的处女航，从英国的南安普顿出发驶往美国纽约。富家少女罗丝（凯特•温丝莱特）与母亲及未婚夫卡尔坐上了头等舱；另一边，放荡不羁的少年画家杰克（莱昂纳多·迪卡普里奥）也在码头的一场赌博中赢得了下等舱的船票。 "),
                  ),
                  GFListTile(
                    color: GFColors.INFO,
                    titleText: "这个杀手不太冷",
                    description: Text(
                        maxLines: 5,
                        overflow: TextOverflow.visible,
                        "里昂（让·雷诺饰）是名孤独的职业杀手，受人雇佣。一天，邻居家小姑娘马蒂尔达（纳塔丽·波特曼饰)敲开他的房门，要求在他那里暂避杀身之祸。原来邻居家的主人是警方缉毒组的眼线，只因贪污了一小包毒品而遭恶警（加里·奥德曼饰）杀害全家的惩罚。马蒂尔达得到里昂的留救，幸免于难，并留在里昂那里。里昂教小女孩使枪，她教里昂法文，两人关系日趋亲密，相处融洽。 "),
                  ),
                  GFListTile(
                    color: GFColors.INFO,
                    titleText: "美丽人生",
                    description: Text(
                        maxLines: 5,
                        overflow: TextOverflow.visible,
                        "犹太青年圭多（罗伯托·贝尼尼）邂逅美丽的女教师多拉（尼可莱塔·布拉斯基），他彬彬有礼的向多拉鞠躬：“早安！公主！”。历经诸多令人啼笑皆非的周折后，天遂人愿，两人幸福美满的生活在一起。 "),
                  ),
                ],
              ),
              const MyTitle('属性演示'),
              GFCarousel(
                items: const [
                  GFListTile(
                    color: GFColors.INFO,
                    titleText: "肖申克的救赎",
                    description: Text(
                        maxLines: 5,
                        overflow: TextOverflow.visible,
                        "一场谋杀案使银行家安迪（蒂姆•罗宾斯 Tim Robbins 饰）蒙冤入狱，谋杀妻子及其情人的指控将囚禁他终生。在肖申克监狱的首次现身就让监狱“大哥”瑞德（摩根•弗里曼 Morgan Freeman 饰）对他另眼相看。"),
                  ),
                  GFListTile(
                    color: GFColors.INFO,
                    titleText: "霸王别姬",
                    description: Text(
                        maxLines: 5,
                        overflow: TextOverflow.visible,
                        "段小楼（张丰毅）与程蝶衣（张国荣）是一对打小一起长大的师兄弟，两人一个演生，一个饰旦，一向配合天衣无缝，尤其一出《霸王别姬》，更是誉满京城，为此，两人约定合演一辈子《霸王别姬》"),
                  ),
                  GFListTile(
                    color: GFColors.INFO,
                    titleText: "阿甘正传",
                    description: Text(
                        maxLines: 5,
                        overflow: TextOverflow.visible,
                        "阿甘（汤姆·汉克斯 饰）于二战结束后不久出生在美国南方阿拉巴马州一个闭塞的小镇，他先天弱智，智商只有75，然而他的妈妈是一个性格坚强的女性，她常常鼓励阿甘“傻人有傻福”，要他自强不息。"),
                  ),
                  GFListTile(
                    color: GFColors.INFO,
                    titleText: "泰坦尼克号",
                    description: Text(
                        maxLines: 5,
                        overflow: TextOverflow.visible,
                        "1912年4月10日，号称 “世界工业史上的奇迹”的豪华客轮泰坦尼克号开始了自己的处女航，从英国的南安普顿出发驶往美国纽约。富家少女罗丝（凯特•温丝莱特）与母亲及未婚夫卡尔坐上了头等舱；另一边，放荡不羁的少年画家杰克（莱昂纳多·迪卡普里奥）也在码头的一场赌博中赢得了下等舱的船票。 "),
                  ),
                  GFListTile(
                    color: GFColors.INFO,
                    titleText: "这个杀手不太冷",
                    description: Text(
                        maxLines: 5,
                        overflow: TextOverflow.visible,
                        "里昂（让·雷诺饰）是名孤独的职业杀手，受人雇佣。一天，邻居家小姑娘马蒂尔达（纳塔丽·波特曼饰)敲开他的房门，要求在他那里暂避杀身之祸。原来邻居家的主人是警方缉毒组的眼线，只因贪污了一小包毒品而遭恶警（加里·奥德曼饰）杀害全家的惩罚。马蒂尔达得到里昂的留救，幸免于难，并留在里昂那里。里昂教小女孩使枪，她教里昂法文，两人关系日趋亲密，相处融洽。 "),
                  ),
                  GFListTile(
                    color: GFColors.INFO,
                    titleText: "美丽人生",
                    description: Text(
                        maxLines: 5,
                        overflow: TextOverflow.visible,
                        "犹太青年圭多（罗伯托·贝尼尼）邂逅美丽的女教师多拉（尼可莱塔·布拉斯基），他彬彬有礼的向多拉鞠躬：“早安！公主！”。历经诸多令人啼笑皆非的周折后，天遂人愿，两人幸福美满的生活在一起。 "),
                  ),
                ],
                //是否显示圆点
                hasPagination: true,
                //圆点尺寸
                pagerSize: 10,
                //选中的圆点颜色
                activeIndicator: GFColors.DANGER,
                // 选中的圆点边框
                // activeDotBorder: Border(
                //   top: BorderSide(width: 15.0, color: Color(0xFFFF7F7F7F)),
                //   left: BorderSide(width: 20.0, color: Color(0xFFFFDFDFDF)),
                //   right: BorderSide(width: 5.0, color: Color(0xFFFF000000)),
                //   bottom: BorderSide(width: 10.0, color: Color(0xFFFF000000)),
                // ),
                //未选中的圆点颜色
                passiveIndicator: GFColors.SECONDARY,
                //未选中的圆点边框
                // passiveDotBorder: Border(
                //   top: BorderSide(width: 15.0, color: Color(0xFFFF7F7F7F)),
                //   left: BorderSide(width: 20.0, color: Color(0xFFFFDFDFDF)),
                //   right: BorderSide(width: 5.0, color: Color(0xFFFF000000)),
                //   bottom: BorderSide(width: 10.0, color: Color(0xFFFF000000)),
                // ),
                //显示高度
                // height: 200,
                // 宽高比，跑马灯郑哥区域的宽高比。设置高度后这个参数无效。默认16/9
                aspectRatio: 3 / 2,
                //每个页面占轮播图宽度的比例。默认0.8
                viewportFraction: 1.0,
                //默认选中的下标，索引从0开始。
                initialPage: 1,
                //是否可以循环滑动，默认true
                enableInfiniteScroll: true,
                //是否自动播放
                autoPlay: true,
                //反向滚动
                reverse: true,
                //自动播放间隔时间，默认3秒
                autoPlayInterval: Duration(seconds: 10),
                //滑动动画时长，默认800毫秒
                autoPlayAnimationDuration: Duration(milliseconds: 300),
                //滑动动画曲线，默认是fastOutSlowIn
                autoPlayCurve: Curves.decelerate,
                //当用户操作滑动后，暂停播放时长
                pauseAutoPlayOnTouch: Duration(seconds: 10),
                // 放大主显示内容
                enlargeMainPage: true,
                //动画切换时间，参数是滑动结束后组件索引
                onPageChanged: (v) {
                  print(v);
                },
              ),
              const GFCarousel(
                height: 250,
                enlargeMainPage: true,
                hasPagination: true,
                items: [
                  GFCard(
                    title: GFListTile(
                      title: Text(
                        'Game Controllers',
                        style: TextStyle(
                          color: GFColors.DARK,
                          fontSize: 30.0,
                        ),
                      ),
                      subTitle: Text(
                        'PlayStation 4',
                        style: TextStyle(color: GFColors.DARK),
                      ),
                    ),
                    showOverlayImage: true,
                    imageOverlay: AssetImage('assets/images/cake1.jpg'),
                  ),
                  GFCard(
                    title: GFListTile(
                      title: Text(
                        'Game Controllers',
                        style: TextStyle(
                          color: GFColors.DARK,
                          fontSize: 30.0,
                        ),
                      ),
                      subTitle: Text(
                        'PlayStation 4',
                        style: TextStyle(color: GFColors.DARK),
                      ),
                    ),
                    showOverlayImage: true,
                    imageOverlay: AssetImage('assets/images/cake2.jpg'),
                  ),
                  GFCard(
                    title: GFListTile(
                      title: Text(
                        'Game Controllers',
                        style: TextStyle(
                          color: GFColors.DARK,
                          fontSize: 30.0,
                        ),
                      ),
                      subTitle: Text(
                        'PlayStation 4',
                        style: TextStyle(color: GFColors.DARK),
                      ),
                    ),
                    showOverlayImage: true,
                    imageOverlay: AssetImage('assets/images/cake3.jpg'),
                  ),
                  GFCard(
                    title: GFListTile(
                      title: Text(
                        'Game Controllers',
                        style: TextStyle(
                          color: GFColors.DARK,
                          fontSize: 30.0,
                        ),
                      ),
                      subTitle: Text(
                        'PlayStation 4',
                        style: TextStyle(color: GFColors.DARK),
                      ),
                    ),
                    showOverlayImage: true,
                    imageOverlay: AssetImage('assets/images/cake4.jpg'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
