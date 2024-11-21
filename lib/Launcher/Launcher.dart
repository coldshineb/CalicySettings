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
          buildListTile(
            title: '桌面模式',
            subtitle: '抽屉模式',
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text('桌面模式'),
                    content: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          RadioListTile(
                            value: 0,
                            groupValue: 0,
                            onChanged: (value) {},
                            title: const Text('抽屉模式'),
                          ),
                          RadioListTile(
                            value: 1,
                            groupValue: 0,
                            onChanged: (value) {},
                            title: const Text('桌面模式'),
                          ),
                        ],
                      ),
                    ),
                    buttonPadding: const EdgeInsets.all(16),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('取消'),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('确定'),
                      ),
                    ],
                  );
                },
              );
            },
          ),
          buildListTile(
            title: '上滑手势',
            subtitle: '搜索',
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text('上滑手势'),
                    content: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          RadioListTile(
                            value: 0,
                            groupValue: 0,
                            onChanged: (value) {},
                            title: const Text('搜索'),
                          ),
                          RadioListTile(
                            value: 1,
                            groupValue: 0,
                            onChanged: (value) {},
                            title: const Text('无'),
                          ),
                        ],
                      ),
                    ),
                    buttonPadding: const EdgeInsets.all(16),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('取消'),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('确定'),
                      ),
                    ],
                  );
                },
              );
            },
          ),
          buildListTile(
            title: '下滑手势',
            subtitle: '通知栏',
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text('下滑手势'),
                    content: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          RadioListTile(
                            value: 0,
                            groupValue: 0,
                            onChanged: (value) {},
                            title: const Text('通知栏'),
                          ),
                          RadioListTile(
                            value: 1,
                            groupValue: 0,
                            onChanged: (value) {},
                            title: const Text('搜索'),
                          ),
                        ],
                      ),
                    ),
                    buttonPadding: const EdgeInsets.all(16),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('取消'),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('确定'),
                      ),
                    ],
                  );
                },
              );
            },
          ),
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
              Navigator.push(
                context,
                calicyPageRoute(LauncherATAGlancePage())
              );
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
          buildListTile(
            title: '网格大小',
            subtitle: '4x5',
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text('网格大小'),
                    content: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          RadioListTile(
                            value: 0,
                            groupValue: 1,
                            onChanged: (value) {},
                            title: const Text('4x4'),
                          ),
                          RadioListTile(
                            value: 1,
                            groupValue: 1,
                            onChanged: (value) {},
                            title: const Text('4x5'),
                          ),
                          RadioListTile(
                            value: 2,
                            groupValue: 1,
                            onChanged: (value) {},
                            title: const Text('5x5'),
                          ),
                          RadioListTile(
                            value: 3,
                            groupValue: 1,
                            onChanged: (value) {},
                            title: const Text('5x6'),
                          ),
                        ],
                      ),
                    ),
                    buttonPadding: const EdgeInsets.all(16),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('取消'),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('确定'),
                      ),
                    ],
                  );
                },
              );
            },
          ),
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
          buildListTile(
            title: '排布样式',
            subtitle: '横向排布',
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text('排布样式'),
                    content: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          RadioListTile(
                            value: 0,
                            groupValue: 0,
                            onChanged: (value) {},
                            title: const Text('横向排布'),
                          ),
                          RadioListTile(
                            value: 1,
                            groupValue: 0,
                            onChanged: (value) {},
                            title: const Text('纵向排布'),
                          ),
                        ],
                      ),
                    ),
                    buttonPadding: const EdgeInsets.all(16),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('取消'),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('确定'),
                      ),
                    ],
                  );
                },
              );
            },
          ),
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
