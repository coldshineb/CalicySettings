import 'package:flutter/material.dart';

import '../../Components.dart';

class DisplayDarkThemePage extends StatefulWidget {
  const DisplayDarkThemePage({super.key});

  @override
  State<DisplayDarkThemePage> createState() => _DisplayDarkThemePageState();
}

class _DisplayDarkThemePageState extends State<DisplayDarkThemePage>
    with Components {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            '深色模式',
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
            title: const Text("深色模式",
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
              '深色模式使用黑色背景，有助于延长电池续航时间。深色模式时间表会等到屏幕进入关闭状态后才应用。',
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
            const CheckedPopupMenuItem(
              value: 3,
              child: Text('就寝时开启'),
            ),
          ]),
          buildListTile(
            title: '调节壁纸颜色',
            subtitle: '深色主题启用时，减暗壁纸颜色',
            onTap: () {},
            trailing: Switch(
              value: true,
              onChanged: (value) {
                setState(() {
                  value = value;
                });
              },
            ),
          ),
          const Divider(height: 1),
          const ListTile(
            title: Text(
              '强制使用深色模式的应用',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
