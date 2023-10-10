import 'package:bruno/bruno.dart';
import 'package:flutter/material.dart';

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
                      children: [Text("123"), Text("123"), Text("123")],
                    )
                  : ListView(
                      children: [Text("321"), Text("312"), Text("321")],
                    ))
        ],
      ),
    );
  }
}
