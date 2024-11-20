import 'package:flutter/material.dart';

import '../Components.dart';

class AppsSpecialAppsPermsPage extends StatefulWidget {
  const AppsSpecialAppsPermsPage({super.key});

  @override
  State<AppsSpecialAppsPermsPage> createState() =>
      _AppsSpecialAppsPermsPageState();
}

class _AppsSpecialAppsPermsPageState extends State<AppsSpecialAppsPermsPage>
    with Components {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            '特殊应用权限',
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
          buildListTile(
            title: '所有文件访问',
            onTap: () {},
          ),
          buildListTile(
            title: '设备管理',
            onTap: () {},
          ),
          buildListTile(
            title: '显示在其它应用上层',
            onTap: () {},
          ),
          buildListTile(
            title: '启用"勿扰"',
            onTap: () {},
          ),
          buildListTile(
            title: '媒体管理应用',
            onTap: () {},
          ),
          buildListTile(
            title: '修改系统设置',
            onTap: () {},
          ),
          buildListTile(
            title: '通知控制',
            onTap: () {},
          ),
          buildListTile(
            title: '更改媒体输出',
            onTap: () {},
          ),
          buildListTile(
            title: '画中画',
            onTap: () {},
          ),
          buildListTile(
            title: '付费短信',
            onTap: () {},
          ),
          buildListTile(
            title: '不限制移动数据用量',
            onTap: () {},
          ),
          buildListTile(
            title: '安装未知应用',
            onTap: () {},
          ),
          buildListTile(
            title: '使用情况访问',
            onTap: () {},
          ),
          buildListTile(
            title: 'VR 助手服务',
            onTap: () {},
          ),
          buildListTile(
            title: '无线局域网控制',
            onTap: () {},
          ),
          buildListTile(
            title: '屏幕唤醒',
            onTap: () {},
          ),
          buildListTile(
            title: '全屏通知',
            onTap: () {},
          ),
          buildListTile(
            title: '通过近场通信启动',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
