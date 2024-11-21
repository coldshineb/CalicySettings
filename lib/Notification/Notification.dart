import 'package:flutter/material.dart';

import '../Components.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> with Components {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '通知',
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
              '管理',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ),
          buildListTile(
            title: '应用通知',
            subtitle: '锁屏通知、悬浮通知、桌面角标',
            onTap: () {},
          ),
          buildListTile(
            title: '历史通知',
            subtitle: '显示近期通知和延后的通知',
            onTap: () {},
          ),
          const Divider(
            height: 1,
          ),
          const ListTile(
            title: Text(
              '对话',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ),
          buildListTile(
            title: '对话',
            subtitle: '没有优先对话',
            onTap: () {},
          ),
          buildListTile(
            title: '对话泡',
            subtitle: '对话能以浮动图标形式显示',
            trailing: Switch(
              value: true,
              onChanged: (value) {},
            ),
            onTap: () {},
          ),
          const Divider(
            height: 1,
          ),
          const ListTile(
            title: Text(
              '隐私',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ),
          buildPopupMenuButton(
            '锁屏通知',
            '隐藏敏感内容',
            [
              const CheckedPopupMenuItem(
                value: 0,
                child: Text('显示全部内容'),
              ),
              const CheckedPopupMenuItem(
                value: 1,
                checked: true,
                child: Text('隐藏敏感内容'),
              ),
              const CheckedPopupMenuItem(
                value: 2,
                child: Text('不显示通知'),
              ),
            ],
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
            title: '勿扰模式',
            subtitle: '已关闭',
            onTap: () {},
          ),
          buildListTile(
            title: '闪烁通知',
            subtitle: '已关闭',
            onTap: () {},
          ),
          buildListTile(
            title: '无线紧急警报',
            onTap: () {},
          ),
          buildListTile(
            title: '隐藏状态栏中的静音通知',
            trailing: Switch(
              value: false,
              onChanged: (value) {},
            ),
            onTap: () {},
          ),
          buildListTile(
            title: '允许显示通知延后选项',
            trailing: Switch(
              value: false,
              onChanged: (value) {},
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
