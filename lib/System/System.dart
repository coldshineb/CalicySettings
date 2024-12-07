import 'package:flutter/material.dart';

import '../Components.dart';

class SystemPage extends StatefulWidget {
  const SystemPage({super.key});

  @override
  State<SystemPage> createState() => _SystemPageState();
}

class _SystemPageState extends State<SystemPage> with Components {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '系统',
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
          buildListTile(
            title: '语言',
            subtitle: '系统语言、应用语言、地区偏好设置、语音',
            icon: Icons.translate_outlined,
            onTap: () {},
          ),
          buildListTile(
            title: '导航模式',
            subtitle: '手势导航',
            icon: Icons.front_hand_outlined,
            onTap: () {},
          ),
          buildListTile(
            title: '键盘',
            subtitle: '屏幕键盘、工具',
            icon: Icons.keyboard_outlined,
            onTap: () {},
          ),
          buildListTile(
            title: '手势',
            icon: Icons.gesture_outlined,
            onTap: () {},
          ),
          buildListTile(
            title: '日期和时间',
            subtitle: 'GMT-05:00 北美东部标准时间',
            icon: Icons.access_time_outlined,
            onTap: () {},
          ),
          buildListTile(
            title: '备份与恢复',
            icon: Icons.backup_outlined,
            onTap: () {},
          ),
          buildListTile(
            title: '系统更新',
            subtitle: 'Calicy 是最新的',
            icon: Icons.system_update_outlined,
            onTap: () {},
          ),
          buildListTile(
            title: '用户',
            subtitle: '目前以 Calicy Demo 身份登录',
            icon: Icons.person_outlined,
            onTap: () {},
          ),
          buildListTile(
            title: '开发者选项',
            icon: Icons.code_outlined,
            onTap: () {},
          ),
          buildListTile(
            title: '维修模式',
            icon: Icons.build_outlined,
            onTap: () {},
          ),
          buildListTile(
            title: '重置',
            icon: Icons.restore_outlined,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
