import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_full_pdf_viewer_null_safe/full_pdf_viewer_scaffold.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/material.dart';

class FilePreview extends StatefulWidget {
  const FilePreview({super.key});

  @override
  State<FilePreview> createState() => _FilePreviewState();
}

class _FilePreviewState extends State<FilePreview> {
  String pathPDF = "";

  // @override
  // void initState() {
  //   super.initState();
  //   createFileOfPdfUrl().then((f) {
  //     setState(() {
  //       pathPDF = f.path;
  //       print(pathPDF);
  //     });
  //   });
  // }

  // Future<File> createFileOfPdfUrl() async {
  //   final url =
  //       "https://cc-blog-admin.oss-cn-beijing.aliyuncs.com/image/2023-09-21/b76dad67-a8ba-437a-b4fd-5160d405ed66.png";
  //   final filename = url.substring(url.lastIndexOf("/") + 1);
  //   var request = await HttpClient().getUrl(Uri.parse(url));
  //   var response = await request.close();
  //   var bytes = await consolidateHttpClientResponseBytes(response);
  //   String dir = (await getApplicationDocumentsDirectory()).path;
  //   File file = new File('$dir/$filename.pdf');
  //   await file.writeAsBytes(bytes);
  //   return file;
  // }

  @override
  Widget build(BuildContext context) {
    return PDFViewerScaffold(
      appBar: AppBar(title: const Text('Plugin example app')),
      path:
          "https://cc-blog-admin.oss-cn-beijing.aliyuncs.com/image/2023-09-21/b76dad67-a8ba-437a-b4fd-5160d405ed66.png",
      // body: Center(
      //   child: ElevatedButton(
      //     child: Text("Open PDF"),
      //     onPressed: () => Navigator.push(
      //       context,
      //       MaterialPageRoute(
      //           builder: (context) => PDFScreen(
      //               "https://cc-blog-admin.oss-cn-beijing.aliyuncs.com/image/2023-09-21/b76dad67-a8ba-437a-b4fd-5160d405ed66.png")),
      //     ),
      //   ),
      // ),
    );
  }
}

class PDFScreen extends StatelessWidget {
  final String pathPDF;

  PDFScreen(this.pathPDF);

  @override
  Widget build(BuildContext context) {
    return PDFViewerScaffold(
        appBar: AppBar(
          title: Text("Document"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.share),
              onPressed: () {},
            ),
          ],
        ),
        path: pathPDF);
  }
}
