import 'package:flutter/material.dart';

import '../Components.dart';

class MorePage extends StatefulWidget {
  const MorePage({super.key});

  @override
  State<MorePage> createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> with Components {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '更多设置',
          style: TextStyle(fontSize: 18),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        children: [
          const ListTile(
            title: Text(
              '辅助功能',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ),
          buildListTile(
            title: 'Calicy 钱包',
            onTap: () {},
          ),
          buildListTile(
            title: '快捷手势',
            onTap: () {},
          ),
          buildListTile(
            title: '边缘防误触',
            onTap: () {},
          ),
          buildListTile(
            title: '悬浮球',
            onTap: () {},
          ),
          buildListTile(
            title: '单手模式',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
