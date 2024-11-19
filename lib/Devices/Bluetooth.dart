import 'package:flutter/material.dart';

import '../Components.dart';

class DevicesBluetoothPage extends StatefulWidget {
  const DevicesBluetoothPage({super.key});

  @override
  State<DevicesBluetoothPage> createState() => _DevicesBluetoothPageState();
}

class _DevicesBluetoothPageState extends State<DevicesBluetoothPage>
    with Components {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            '蓝牙',
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
            title: const Text("蓝牙",
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
          buildListTile(
            title: '设备名称',
            subtitle: 'Calicy Demo',
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text('设备名称'),
                    content: TextField(
                      controller: TextEditingController(text: 'Calicy Demo'),
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
            icon: Icons.add,
            title: '与新设备配对',
            onTap: () {},
          ),
          Divider(height: 1),
          const ListTile(
            title: Text(
              '连接设置',
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
          ),
          buildListTile(
            title: '明天自动开启',
            subtitle: '关闭蓝牙后将于明天重新打开吗，便于重新连接已配对设备',
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
          buildListTile(
            title: '快速连接',
            subtitle: '快速连接耳机、音箱等支持快连协议的蓝牙设备',
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
          buildListTile(
            title: '来电铃声同时播放',
            subtitle: '来电时允许蓝牙设备同步播放手机预设铃声',
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
          buildListTile(
            title: '设备黑名单',
            onTap: () {},
          ),
          Divider(height: 1),
          const ListTile(
            title: Text(
              '显示设置',
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
          ),
          buildListTile(
            title: '显示无名称设备',
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
            title: '状态栏始终显示蓝牙图标',
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
          const ListTile(
            leading: Icon(Icons.info_outline),
          ),
          const ListTile(
            title: Text(
              '蓝牙处于开启状态时，您的设备可以与附近的其他蓝牙设备通信。快速分享、查找我的设备等功能会使用蓝牙。',
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
          )
        ],
      ),
    );
  }
}
