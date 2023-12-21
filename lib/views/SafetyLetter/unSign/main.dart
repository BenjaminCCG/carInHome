import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:get/get.dart';
import 'package:signature/signature.dart';

class UnSign extends StatelessWidget {
  final SignatureController _controller = SignatureController(
    penStrokeWidth: 5,
    penColor: Colors.red,
    exportBackgroundColor: Colors.blue,
  );

  UnSign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('文件名称')),
      body: Container(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            Container(
              height: 200,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("文件名"),
                  Text("大小"),
                  Text("上传人"),
                  RichText(text: TextSpan(text: "<h1>大家好</h1>")),
                  HtmlWidget("<h1 style='color:red'>大家好</h1>")
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                    child: ElevatedButton(
                        onPressed: () => {Get.toNamed("/filePreview")},
                        child: Text("查看附件"))),
                SizedBox(width: 10),
                Expanded(
                    child: ElevatedButton(
                        onPressed: () => {
                              // Get.toNamed("/signature")
                              showModalBottomSheet(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return Container(
                                      height: 300,
                                      child: Column(
                                        children: [
                                          Signature(
                                            key: const Key('signature'),
                                            controller: _controller,
                                            height: 200,
                                            backgroundColor: Colors.grey[300]!,
                                          ),
                                          ElevatedButton(
                                              onPressed: () {
                                                print(_controller);
                                              },
                                              child: Text("sss1"))
                                        ],
                                      ),
                                    );
                                  })
                            },
                        child: Text("签名")))
              ],
            )
          ],
        ),
      ),
    );
  }
}
