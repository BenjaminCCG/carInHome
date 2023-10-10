import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/titleItem.dart';
import 'package:get/get.dart';

class MenuItem {
  final String icon;
  final String name;
  final String link;

  MenuItem(this.icon, this.name, this.link);
}

List<MenuItem> menuList = [
  MenuItem(
      'https://cc-blog-admin.oss-cn-beijing.aliyuncs.com/image/2023-09-21/b76dad67-a8ba-437a-b4fd-5160d405ed66.png',
      '安全责任书',
      '/safetyLetter'),
  MenuItem(
      'https://cc-blog-admin.oss-cn-beijing.aliyuncs.com/image/2023-09-21/b76dad67-a8ba-437a-b4fd-5160d405ed66.png',
      '安全责任书',
      '/login'),
  MenuItem(
      'https://cc-blog-admin.oss-cn-beijing.aliyuncs.com/image/2023-09-21/b76dad67-a8ba-437a-b4fd-5160d405ed66.png',
      '安全责任书',
      '/login'),
  MenuItem(
      'https://cc-blog-admin.oss-cn-beijing.aliyuncs.com/image/2023-09-21/b76dad67-a8ba-437a-b4fd-5160d405ed66.png',
      '安全责任书',
      '/login'),
  MenuItem(
      'https://cc-blog-admin.oss-cn-beijing.aliyuncs.com/image/2023-09-21/b76dad67-a8ba-437a-b4fd-5160d405ed66.png',
      '安全责任书',
      '/login')
];

class Shop extends StatelessWidget {
  const Shop({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(children: [
        ListView(
          children: [
            TitleItem(title: "我的工作台"),
            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10.0,
                childAspectRatio: 2.5,
              ),
              shrinkWrap: true,
              itemCount: menuList.length,
              itemBuilder: ((context, index) => InkWell(
                    onTap: () => {Get.toNamed("/safetyLetter")},
                    child: Container(
                      width: 100,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: Colors.white,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                              width: 24,
                              height: 24,
                              child: Image.network(menuList[index].icon)),
                          Text(menuList[index].name)
                        ],
                      ),
                    ),
                  )),
            ),
            TitleItem(title: "门店任务"),
            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10.0,
                childAspectRatio: 2.5,
              ),
              shrinkWrap: true,
              itemCount: menuList.length,
              itemBuilder: ((context, index) => Container(
                    width: 100,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                            width: 24,
                            height: 24,
                            child: Image.network(menuList[index].icon)),
                        Text(menuList[index].name)
                      ],
                    ),
                  )),
            ),
            TitleItem(title: "门店信息"),
            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10.0,
                childAspectRatio: 2.5,
              ),
              shrinkWrap: true,
              itemCount: menuList.length,
              itemBuilder: ((context, index) => Container(
                    width: 100,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                            width: 24,
                            height: 24,
                            child: Image.network(menuList[index].icon)),
                        Text(menuList[index].name)
                      ],
                    ),
                  )),
            ),
            TitleItem(title: "供应商工作台"),
            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10.0,
                childAspectRatio: 2.5,
              ),
              shrinkWrap: true,
              itemCount: menuList.length,
              itemBuilder: ((context, index) => Container(
                    width: 100,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                            width: 24,
                            height: 24,
                            child: Image.network(menuList[index].icon)),
                        Text(menuList[index].name)
                      ],
                    ),
                  )),
            )
          ],
        ),
        Positioned(
          bottom: 20,
          width: MediaQuery.of(context).size.width - 16,
          child: InkWell(
            onTap: () => {print('1111')},
            child: Container(
              padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.ac_unit_sharp,
                    size: 20,
                    color: Colors.white,
                  ),
                  Text(
                    "扫描门店码查看门店任务",
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
            right: 0,
            bottom: 80,
            child: Container(
              width: 80,
              child: Image.asset("static/images/tood.png"),
            ))
      ]),
    );
  }
}
