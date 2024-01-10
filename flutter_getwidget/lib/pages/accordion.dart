import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

class AccordionPage extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('AccordionPage')),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Wrap(
            children: [
              const GFAccordion(
                title: '美丽人生',
                content:
                    """　　犹太青年圭多（罗伯托·贝尼尼）邂逅美丽的女教师多拉（尼可莱塔·布拉斯基），他彬彬有礼的向多拉鞠躬：“早安！公主！”。历经诸多令人啼笑皆非的周折后，天遂人愿，两人幸福美满的生活在一起。 
　　然而好景不长，法西斯政权下，圭多和儿子被强行送往犹太人集中营。多拉虽没有犹太血统，毅然同行，与丈夫儿子分开关押在一个集中营里。聪明乐天的圭多哄骗儿子这只是一场游戏，奖品就是一辆大坦克，儿子快乐、天真的生活在纳粹的阴霾之中。尽管集中营的生活艰苦寂寞，圭多仍然带给他人很多快乐，他还趁机在纳粹的广播里问候妻子：“早安！公主！” 
　　法西斯政权即将倾覆，纳粹的集中营很快就要接受最后的清理，圭多编给儿子的游戏该怎么结束？他们一家能否平安的度过这黑暗的年代呢？ """,
                //标题文字样式，使用titleChild时无效。
                textStyle: TextStyle(
                  color: Colors.red,
                ),
              ),
              GFAccordion(
                titleChild: const Text(
                  "阿甘正传",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: GFColors.PRIMARY,
                  ),
                ),
                contentChild: const Text(
                  """　　犹太青年圭多（罗伯托·贝尼尼）邂逅美丽的女教师多拉（尼可莱塔·布拉斯基），他彬彬有礼的向多拉鞠躬：“早安！公主！”。历经诸多令人啼笑皆非的周折后，天遂人愿，两人幸福美满的生活在一起。 
　　然而好景不长，法西斯政权下，圭多和儿子被强行送往犹太人集中营。多拉虽没有犹太血统，毅然同行，与丈夫儿子分开关押在一个集中营里。聪明乐天的圭多哄骗儿子这只是一场游戏，奖品就是一辆大坦克，儿子快乐、天真的生活在纳粹的阴霾之中。尽管集中营的生活艰苦寂寞，圭多仍然带给他人很多快乐，他还趁机在纳粹的广播里问候妻子：“早安！公主！” 
　　法西斯政权即将倾覆，纳粹的集中营很快就要接受最后的清理，圭多编给儿子的游戏该怎么结束？他们一家能否平安的度过这黑暗的年代呢？ """,
                  style: TextStyle(
                    color: GFColors.ALT,
                  ),
                ),
                //折叠状态时，右侧的组件
                // collapsedIcon: Icon(
                //   Icons.add,
                // ),
                // expandedIcon: Icon(
                //   Icons.remove,
                // ),
                //支持各类组件
                collapsedIcon: const Text(
                  "展开",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: GFColors.PRIMARY,
                  ),
                ),
                expandedIcon: const Text(
                  "收起",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: GFColors.PRIMARY,
                  ),
                ),
                //折叠状态时，背景颜色
                collapsedTitleBackgroundColor: GFColors.FOCUS,
                //展开状态时，背景颜色
                expandedTitleBackgroundColor: GFColors.SUCCESS,
                //标题组件内边距
                titlePadding: const EdgeInsets.all(10),
                //内容组件内边距
                contentPadding: const EdgeInsets.all(10),
                //组件的外边距
                margin: const EdgeInsets.all(10),
                //内容组件的背景色
                contentBackgroundColor: GFColors.LIGHT,
                //标题栏边框
                titleBorder: Border.all(
                  color: Colors.black,
                  width: 2,
                ),
                //内容组件的边框线
                contentBorder: Border.all(
                  color: Colors.red,
                  width: 1,
                ),
                //默认是否展开，默认为false。测试发现有点错位的bug
                showAccordion: true,
                //标题文字原件样式。
                titleBorderRadius: BorderRadius.circular(10),
                //内容组件的边框圆角
                contentBorderRadius: BorderRadius.circular(10),
                //收缩/展开后的回调，status是目标状态，false是收缩，true是展开。
                onToggleCollapsed: (status) {
                  print(status);
                },
              ),
            ],
          ),
        )));
  }
}
