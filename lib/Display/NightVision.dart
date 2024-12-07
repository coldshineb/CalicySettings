import 'package:flutter/material.dart';

import '../../Components.dart';

class DisplayNightVisionPage extends StatefulWidget {
  const DisplayNightVisionPage({super.key});

  @override
  State<DisplayNightVisionPage> createState() => _DisplayNightVisionPageState();
}

class _DisplayNightVisionPageState extends State<DisplayNightVisionPage>
    with Components {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            '夜间模式',
            style: TextStyle(fontSize: 18),
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          )),
      body: ListView(
        children: [
          ListTile(
            tileColor: Colors.blue,
            leading: const Icon(null),
            title: const Text("夜间模式",
                style: TextStyle(color: Colors.white),
                maxLines: 1,
                overflow: TextOverflow.ellipsis),
            trailing: Switch(
              activeColor: Colors.white,
              value: true,
              onChanged: (value) {},
            ),
            onTap: () {},
          ),
          const SizedBox(
            height: 10,
          ),
          const ListTile(
            title: Text(
              '夜间模式会将您的屏幕色调调为琥珀色，可让您在光线昏暗的环境下更舒适地查看屏幕或阅读文字，并有助您入睡。',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            height: 1,
          ),
          buildPopupMenuButton('时间表', '在日落到日出期间开启', [
            const CheckedPopupMenuItem(
              value: 0,
              child: Text('无'),
            ),
            const CheckedPopupMenuItem(
              value: 1,
              checked: true,
              child: Text('在日落到日出期间开启'),
            ),
            const CheckedPopupMenuItem(
              value: 2,
              child: Text('在设定的时间开启'),
            ),
          ]),
          buildListTile(
            title: '色温',
            icon: Icons.wb_sunny_outlined,
          ),
          Slider(value: 100, onChanged: (value) {}, min: 0, max: 100),
          buildListTile(
            title: '纸质纹理',
            icon: Icons.texture_outlined,
          ),
          Slider(value: 0, onChanged: (value) {}, min: 0, max: 100),
          buildPopupMenuButton('纸质色彩', '全彩', [
            const CheckedPopupMenuItem(
              value: 0,
              checked: true,
              child: Text('全彩'),
            ),
            const CheckedPopupMenuItem(
              value: 1,
              child: Text('淡彩'),
            ),
            const CheckedPopupMenuItem(
              value: 2,
              child: Text('黑白'),
            ),
          ]),
        ],
      ),
    );
  }
}
