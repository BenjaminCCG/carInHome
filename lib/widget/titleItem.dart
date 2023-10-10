import 'package:flutter/material.dart';

class TitleItem extends StatelessWidget {
  final String title;
  const TitleItem({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
      child: Row(
        children: [
          Container(
            width: 2,
            height: 13,
            margin: EdgeInsets.only(right: 5),
            decoration: BoxDecoration(color: Colors.blue[500]),
          ),
          Text(title)
        ],
      ),
    );
  }
}
