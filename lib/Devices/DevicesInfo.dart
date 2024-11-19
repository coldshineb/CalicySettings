import 'package:flutter/material.dart';

import '../Components.dart';

class DevicesDevicesInfoPage extends StatefulWidget {
  final String title;

  const DevicesDevicesInfoPage({super.key, required this.title});

  @override
  State<DevicesDevicesInfoPage> createState() => _DevicesDevicesInfoPageState();
}

class _DevicesDevicesInfoPageState extends State<DevicesDevicesInfoPage>
    with Components {
  String get title => widget.title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            title,
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
          const ListTile(
            title: Text(
              '设备信息',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  IconButton(
                    icon: Icon(Icons.noise_control_off),
                    onPressed: () {},
                  ),
                  Text('通透', style: TextStyle(fontSize: 12)),
                  SizedBox(height: 10),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    icon: Icon(Icons.noise_aware, color: Colors.blue),
                    onPressed: () {},
                  ),
                  Text('降噪',
                      style: TextStyle(fontSize: 12, color: Colors.blue)),
                  SizedBox(height: 10),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    icon: Icon(Icons.noise_control_off),
                    onPressed: () {},
                  ),
                  Text('关闭', style: TextStyle(fontSize: 12)),
                  SizedBox(height: 10),
                ],
              ),
            ],
          ),
          buildListTile(
            icon: Icons.edit_outlined,
            title: '重命名',
            subtitle: title,
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text('重命名'),
                    content: TextField(
                      controller: TextEditingController(text: title),
                    ),
                    buttonPadding: EdgeInsets.all(16),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('取消'),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('确定'),
                      ),
                    ],
                  );
                },
              );
            },
          ),
          buildListTile(
            icon: Icons.upgrade,
            title: '检查更新',
            onTap: () {},
          ),
          Divider(
            height: 1,
          ),
          const ListTile(
            title: Text(
              '用于',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ),
          buildListTile(
            icon: Icons.call_outlined,
            title: '通话',
            onTap: () {},
            trailing: Switch(
              value: true,
              onChanged: (value) {},
            ),
          ),
          buildListTile(
            icon: Icons.music_note_outlined,
            title: '媒体音频',
            onTap: () {},
            trailing: Switch(
              value: true,
              onChanged: (value) {},
            ),
          ),
          buildListTile(
            icon: Icons.person_outline,
            title: '联系人信息和通话记录分享',
            onTap: () {},
            trailing: Switch(
              value: false,
              onChanged: (value) {},
            ),
          ),
          Divider(
            height: 1,
          ),
          const ListTile(
            title: Text(
              '快捷操作',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ),
          buildListTile(
            title: '手势操作',
            onTap: () {},
          ),
          buildListTile(
            title: '佩戴检测',
            subtitle: '摘下耳机，声音暂停；佩戴耳机，声音继续播放',
            onTap: () {},
            trailing: Switch(
              value: true,
              onChanged: (bool value) {
                setState(() {});
              },
            ),
          ),
          buildListTile(
            title: '自动接听来电',
            onTap: () {},
            trailing: Switch(
              value: false,
              onChanged: (bool value) {
                setState(() {});
              },
            ),
          ),
          buildListTile(
            title: '双设备连接',
            subtitle: '同时连接两台设备',
            onTap: () {},
            trailing: Switch(
              value: true,
              onChanged: (bool value) {
                setState(() {});
              },
            ),
          ),
          Divider(
            height: 1,
          ),
          const ListTile(
            title: Text(
              '属性',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ),
          buildListTile(
            title: '绝对音量',
            subtitle: '调整音量时，同时调整设备音量',
            onTap: () {},
            trailing: Switch(
              value: true,
              onChanged: (bool value) {
                setState(() {});
              },
            ),
          ),
          buildListTile(
            title: 'AAC',
            subtitle: '提供高质量音频体验',
            onTap: () {},
            trailing: Switch(
              value: true,
              onChanged: (bool value) {
                setState(() {});
              },
            ),
          ),
          Divider(
            height: 1,
          ),
          buildListTile(
            title: '耳塞贴合度检测',
            onTap: () {},
          ),
          buildListTile(
            title: '耳机防丢',
            onTap: () {},
          ),
          buildListTile(
            title: '通知栏显示状态信息',
            onTap: () {},
            trailing: Switch(
              value: false,
              onChanged: (bool value) {
                setState(() {});
              },
            ),
          ),
          Divider(
            height: 1,
          ),
          buildListTile(
            title: '取消配对',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
