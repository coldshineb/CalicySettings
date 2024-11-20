import 'package:flutter/material.dart';

import '../Components.dart';

class AppsAppsInfoPage extends StatefulWidget {
  final String title;
  final IconData icon;

  const AppsAppsInfoPage({super.key, required this.title, required this.icon});

  @override
  State<AppsAppsInfoPage> createState() => _AppsAppsInfoPageState();
}

class _AppsAppsInfoPageState extends State<AppsAppsInfoPage> with Components {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            '应用信息',
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
          const SizedBox(
            height: 30,
          ),
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  widget.icon,
                  size: 30,
                ), // Replace with your desired icon
                Text(
                  widget.title,
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Divider(
            height: 1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  IconButton(
                    icon: const Icon(Icons.cloud_upload_outlined),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: const Text('要归档此应用吗？'),
                            content: const Text('应用数据将保留在设备上，您随时可以点击启动器中的应用图标重新安装此应用的最新版本。'),
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
                  const Text('归档', style: TextStyle(fontSize: 12)),
                  const SizedBox(height: 10),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    icon: const Icon(Icons.disabled_visible_outlined),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: const Text('要停用此应用吗？'),
                            content: const Text('停用系统应用可能会导致系统异常。'),
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
                  const Text('停用', style: TextStyle(fontSize: 12)),
                  const SizedBox(height: 10),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    icon: const Icon(Icons.stop_circle_outlined),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: const Text('要强行停止此应用吗？'),
                            content: const Text('强行停止应用可能会导致应用异常。'),
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
                  const Text('强行停止', style: TextStyle(fontSize: 12)),
                  const SizedBox(height: 10),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    icon: const Icon(Icons.open_in_new_outlined),
                    onPressed: () {},
                  ),
                  const Text('打开', style: TextStyle(fontSize: 12)),
                  const SizedBox(height: 10),
                ],
              ),
            ],
          ),
          const Divider(
            height: 1,
          ),
          const ListTile(
            title: Text(
              '使用量',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ),
          buildListTile(
            title: '存储',
            subtitle: '已使用 100 MB 内部存储空间',
            onTap: () {},
          ),
          buildListTile(
            title: '电池',
            subtitle: '自上次充电以来使用了 10%',
            onTap: () {},
          ),
          buildListTile(
            title: '设备使用时间',
            subtitle: '今天使用了30分钟',
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
            title: '通知',
            subtitle: '无通知',
            onTap: () {},
          ),
          buildListTile(
            title: '权限',
            subtitle: '权限使用记录、自启动、启动其它应用、特殊权限',
            onTap: () {},
          ),
          buildListTile(
            title: '语言',
            subtitle: '系统默认设置',
            onTap: () {},
          ),
          buildListTile(
            title: '联网',
            subtitle: '无线局域网、移动网络',
            onTap: () {},
          ),
          buildListTile(
            title: '省电策略',
            subtitle: '无限制',
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
            title: '默认打开',
            onTap: () {},
          ),
          buildListTile(
            title: '管理闲置应用',
            subtitle: '撤消权限、删除临时文件、停止发送通知并归档应用',
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
              '更多信息',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ),
          buildListTile(
            title: '应用详情',
            subtitle: '安装自：系统应用',
          ),
          buildListTile(
            title: '版本',
            subtitle: '1.0.0',
          ),
        ],
      ),
    );
  }
}
