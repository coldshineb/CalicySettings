import 'package:flutter/material.dart';

import '../../Components.dart';

class SoundDNDPage extends StatefulWidget {
  const SoundDNDPage({super.key});

  @override
  State<SoundDNDPage> createState() => _SoundDNDPageState();
}

class _SoundDNDPageState extends State<SoundDNDPage> with Components {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            '勿扰模式',
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
            tileColor: Colors.grey,
            leading: const Icon(null),
            title: const Text("勿扰模式",
                style: TextStyle(color: Colors.white),
                maxLines: 1,
                overflow: TextOverflow.ellipsis),
            trailing: Switch(
              value: false,
              onChanged: (value) {},
            ),
            onTap: () {},
          ),
          const ListTile(
            title: Text(
              '例外',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ),
          buildListTile(
            title: '联系人',
            subtitle: '部分人除外',
            onTap: () {},
          ),
          buildListTile(
            title: '应用',
            subtitle: '"数字健康"除外',
            onTap: () {},
          ),
          buildListTile(
            title: '闹钟和其它例外项',
            subtitle: '闹钟和媒体例外',
            onTap: () {},
          ),
          const Divider(height: 1),
          const ListTile(
            title: Text(
              '常规',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ),
          buildListTile(
            title: '仅在锁屏时生效',
            onTap: () {},
            trailing: Switch(
              value: false,
              onChanged: (value) {
                setState(() {
                  value = value;
                });
              },
            ),
          ),
          buildListTile(
            title: '时间表',
            subtitle: '已设置 2 个时间表',
            onTap: () {},
          ),
          buildListTile(
            title: '在快捷设置中开启时的持续时长',
            subtitle: '直到您将其关闭',
            onTap: () {},
          ),
          buildListTile(
            title: '针对已过滤通知的显示选项',
            subtitle: '已隐藏部分通知',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
