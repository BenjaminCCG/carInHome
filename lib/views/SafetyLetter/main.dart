import 'package:bruno/bruno.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SafetyLetter extends StatefulWidget {
  const SafetyLetter({super.key});

  @override
  State<SafetyLetter> createState() => _SafetyLetterState();
}

class _SafetyLetterState extends State<SafetyLetter>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final List<BadgeTab> _tabs = [
    BadgeTab(text: "未签署文件"),
    BadgeTab(text: "已签署文件")
  ];
  int _selectedIndex = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: _tabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("安全责任书"),
      ),
      body: Column(
        children: [
          BrnTabBar(
            controller: _tabController,
            tabs: _tabs,
            onTap: (state, index) {
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
          Expanded(
              child: _selectedIndex == 0
                  ? ListView(
                      padding: EdgeInsets.all(8),
                      children: [
                        Container(
                          color: Colors.white,
                          margin: EdgeInsets.only(bottom: 8),
                          child: ListTile(
                            title: Text("文件名称"),
                            subtitle: Text("店长"),
                            trailing: Icon(Icons.arrow_forward_ios),
                            onTap: () => {Get.toNamed("/unSign")},
                          ),
                        ),
                        Container(
                          color: Colors.white,
                          child: const ListTile(
                            title: Text("文件名称"),
                            subtitle: Text("店长"),
                            trailing: Icon(Icons.arrow_forward_ios),
                          ),
                        ),
                      ],
                    )
                  : ListView(
                      padding: EdgeInsets.all(8),
                      children: [
                        Container(
                          color: Colors.white,
                          margin: EdgeInsets.only(bottom: 8),
                          child: const ListTile(
                            title: Text("文件名称"),
                            subtitle: Text("店长"),
                            trailing: Icon(Icons.arrow_forward_ios),
                          ),
                        ),
                        Container(
                          color: Colors.white,
                          child: const ListTile(
                            title: Text("文件名称"),
                            subtitle: Text("店长"),
                            trailing: Icon(Icons.arrow_forward_ios),
                          ),
                        ),
                      ],
                    ))
        ],
      ),
    );
  }
}
