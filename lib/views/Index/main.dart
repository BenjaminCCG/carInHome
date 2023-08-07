import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/Index/mine/main.dart';
import 'package:flutter_application_1/views/Index/shop/main.dart';
import 'package:flutter_application_1/views/Index/message/main.dart';

class TabsItem {
  final String? title;
  final Widget icon;
  final Widget? activeIcon;
  final Widget? widget;

  TabsItem({this.title, required this.icon, this.activeIcon, this.widget});
}

List<TabsItem> tabViewList = [
  TabsItem(
      title: '首页',
      icon: const Image(
        image: AssetImage("static/images/bar-icon-home.png"),
        width: 18,
        height: 18,
      ),
      activeIcon: const Image(
        image: AssetImage("static/images/bar-icon-home-active.png"),
        width: 18,
        height: 18,
      ),
      widget: const Shop()),
  TabsItem(
      title: '消息',
      icon: const Image(
        image: AssetImage("static/images/bar-icon-msg.png"),
        width: 18,
        height: 18,
      ),
      activeIcon: const Image(
          image: AssetImage("static/images/bar-icon-msg-active.png"),
          width: 18,
          height: 18),
      widget: const Message()),
  TabsItem(
      title: '我的',
      icon: const Image(
          image: AssetImage("static/images/bar-icon-mine.png"),
          width: 18,
          height: 18),
      activeIcon: const Image(
          image: AssetImage("static/images/bar-icon-mine-active.png"),
          width: 18,
          height: 18),
      widget: const Mine()),
];

class Index extends StatefulWidget {
  const Index({super.key});

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '车享家-综合管理系统',
        ),
        centerTitle: true,
      ),
      body: tabViewList[_currentIndex].widget,
      bottomNavigationBar: BottomNavigationBar(
        items: tabViewList
            .map((TabsItem item) => BottomNavigationBarItem(
                  label: item.title,
                  icon: item.icon,
                  activeIcon: item.activeIcon,
                ))
            .toList(),
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
