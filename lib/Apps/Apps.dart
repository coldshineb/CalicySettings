import 'package:flutter/material.dart';

import '../Components.dart';
import 'AppsInfo.dart';
import 'SpecialAppPerms.dart';
class AppsPage extends StatefulWidget {
  const AppsPage({super.key});

  @override
  State<AppsPage> createState() => _AppsPageState();
}

class _AppsPageState extends State<AppsPage> with Components {
  int _dnsMode = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '应用',
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
              '最近打开的应用',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ),
          buildListTile(
            icon: Icons.file_download,
            title: '文件',
            subtitle: '5 分钟前',
            onTap: () {
              Navigator.push(context, calicyPageRoute(const AppsAppsInfoPage(title: '文件', icon: Icons.file_download)));
            },
          ),
          buildListTile(
            icon: Icons.music_note_outlined,
            title: '音乐',
            subtitle: '5 分钟前',
            onTap: () {
              Navigator.push(context, calicyPageRoute(const AppsAppsInfoPage(title: '音乐', icon: Icons.music_note_outlined)));
            },
          ),
          buildListTile(
            icon: Icons.photo_outlined,
            title: '相册',
            subtitle: '15 分钟前',
            onTap: () {
              Navigator.push(context, calicyPageRoute(const AppsAppsInfoPage(title: '相册', icon: Icons.photo_outlined)));
            },
          ),
          buildListTile(
            icon: Icons.camera_alt_outlined,
            title: '相机',
            subtitle: '20 分钟前',
            onTap: () {
              Navigator.push(context, calicyPageRoute(const AppsAppsInfoPage(title: '相机', icon: Icons.camera_alt_outlined)));
            },
          ),
          buildListTile(
            icon: Icons.arrow_forward,
            title: '查看所有 10 个应用',
            onTap: () {},
          ),
          const Divider(
            height: 1,
          ),
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
            title: '默认应用',
            subtitle: 'Strap、电话和信息',
            onTap: () {},
          ),
          buildListTile(
            icon: Icons.copy,
            title: '克隆应用',
            onTap: () {
            },
          ),
          buildListTile(
            icon: Icons.lock_outline,
            title: '应用锁',
            onTap: () {},
          ),
          buildListTile(
            icon: Icons.autorenew,
            title: '自启动管理',
            onTap: () {},
          ),
          buildListTile(
            icon: Icons.assistant_outlined,
            title: 'Calicy 助理',
            onTap: () {},
          ),
          buildListTile(
            icon: Icons.access_time_outlined,
            title: '屏幕使用时间',
            subtitle: '今天使用了1小时30分钟',
            onTap: () {},
          ),
          const Divider(
            height: 1,
          ),
          const ListTile(
            title: Text(
              '高级',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ),
          buildListTile(
            title: '闲置应用',
            onTap: () {},
          ),
          buildListTile(
            title: '特殊应用权限',
            onTap: () {
              Navigator.push(context, calicyPageRoute(const AppsSpecialAppsPermsPage()));
            },
          ),
        ],
      ),
    );
  }
}
