import 'package:calicy_settings/Launcher/AtAGlance.dart';
import 'package:flutter/material.dart';

import '../Components.dart';

class LauncherPage extends StatefulWidget {
  const LauncherPage({super.key});

  @override
  State<LauncherPage> createState() => _LauncherPageState();
}

class _LauncherPageState extends State<LauncherPage> with Components {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '主屏幕',
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
              '行为',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ),
          buildPopupMenuButton('桌面模式', '抽屉模式', [
            const CheckedPopupMenuItem(
              value: 0,
              child: Text('桌面模式'),
            ),
            const CheckedPopupMenuItem(
              value: 1,
              checked: true,
              child: Text('抽屉模式'),
            ),
          ]),
          buildPopupMenuButton('上滑手势', '搜索', [
            const CheckedPopupMenuItem(
              value: 0,
              checked: true,
              child: Text('搜索'),
            ),
            const CheckedPopupMenuItem(
              value: 1,
              child: Text('无'),
            ),
          ]),
          buildPopupMenuButton('下滑手势', '通知栏', [
            const CheckedPopupMenuItem(
              value: 0,
              checked: true,
              child: Text('通知栏'),
            ),
            const CheckedPopupMenuItem(
              value: 1,
              child: Text('搜索'),
            ),
          ]),
          buildListTile(
            title: '显示搜索栏',
            trailing: Switch(
              value: true,
              onChanged: (value) {},
            ),
            onTap: () {},
          ),
          buildListTile(
            title: '智能助理',
            subtitle: '在主屏幕最左侧页面显示智能助理',
            onTap: () {},
            trailing: Switch(
              value: true,
              onChanged: (value) {},
            ),
          ),
          const Divider(
            height: 1,
          ),
          const ListTile(
            title: Text(
              '布局',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ),
          buildListTile(
            title: '资讯一览',
            subtitle: '已开启',
            onTap: () {
              Navigator.push(context, calicyPageRoute(LauncherATAGlancePage()));
            },
          ),
          buildListTile(
            title: '自动补齐空位',
            subtitle: '卸载应用后自动补齐空位',
            onTap: () {},
            trailing: Switch(
              value: true,
              onChanged: (value) {},
            ),
          ),
          buildListTile(
            title: '锁定布局',
            trailing: Switch(
              value: false,
              onChanged: (value) {},
            ),
            onTap: () {},
          ),
          buildListTile(
            title: '隐藏标签',
            subtitle: '隐藏应用、文件夹和快捷方式标签',
            trailing: Switch(
              value: false,
              onChanged: (value) {},
            ),
            onTap: () {},
          ),
          buildListTile(
            title: '显示较长的标签',
            subtitle: '在搜索结果和桌面中以 2 行显示较长的标签',
            onTap: () {},
            trailing: Switch(
              value: true,
              onChanged: (value) {},
            ),
          ),
          buildPopupMenuButton('网格大小', '4x5', [
            const CheckedPopupMenuItem(
              value: 0,
              child: Text('4x4'),
            ),
            const CheckedPopupMenuItem(
              value: 1,
              checked: true,
              child: Text('4x5'),
            ),
            const CheckedPopupMenuItem(
              value: 2,
              child: Text('5x5'),
            ),
            const CheckedPopupMenuItem(
              value: 3,
              child: Text('5x6'),
            ),
          ]),
          buildListTile(
            title: '显示建议',
            subtitle: '在常驻应用图标栏的空位处提供应用建议',
            onTap: () {},
            trailing: Switch(
              value: true,
              onChanged: (value) {},
            ),
          ),
          buildListTile(
            title: '建议黑名单',
            onTap: () {},
          ),
          const Divider(
            height: 1,
          ),
          const ListTile(
            title: Text(
              '编辑',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ),
          buildListTile(
            title: '摇动整理',
            subtitle: '摇动设备以整理桌面',
            trailing: Switch(
              value: true,
              onChanged: (value) {},
            ),
            onTap: () {},
          ),
          buildListTile(
            title: '滑动整理',
            subtitle: '禁用页面滑动，从而在滑动时整理桌面图标到同一方向',
            trailing: Switch(
              value: false,
              onChanged: (value) {},
            ),
            onTap: () {},
          ),
          const Divider(
            height: 1,
          ),
          const ListTile(
            title: Text(
              '概览',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ),
          buildPopupMenuButton('排布方式', '横向排布', [
            const CheckedPopupMenuItem(
              value: 0,
              checked: true,
              child: Text('横向排布'),
            ),
            const CheckedPopupMenuItem(
              value: 1,
              child: Text('纵向排布'),
            ),
          ]),
          buildListTile(
            title: '显示内存使用情况',
            trailing: Switch(
              value: true,
              onChanged: (value) {},
            ),
            onTap: () {},
          ),
          buildListTile(
            title: '快速启动小窗口',
            subtitle: '将应用预览图拖至屏幕上方小窗口区域即可进入小窗口模式',
            trailing: Switch(
              value: true,
              onChanged: (value) {},
            ),
            onTap: () {},
          ),
          buildListTile(
            title: '显示建议的操作',
            subtitle: '屏幕截图、应用元素选择等',
            trailing: Switch(
              value: true,
              onChanged: (value) {},
            ),
            onTap: () {},
          ),
          buildListTile(
            title: '模糊预览',
            subtitle: '为了隐私安全，请选择需要模糊的敏感应用',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
