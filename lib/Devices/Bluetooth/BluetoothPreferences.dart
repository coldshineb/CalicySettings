import 'package:flutter/material.dart';

import '../../Components.dart';

class DevicesBluetoothBluetoothPreferencesPage extends StatefulWidget {
  const DevicesBluetoothBluetoothPreferencesPage({super.key});

  @override
  State<DevicesBluetoothBluetoothPreferencesPage> createState() =>
      _DevicesBluetoothBluetoothPreferencesPageState();
}

class _DevicesBluetoothBluetoothPreferencesPageState
    extends State<DevicesBluetoothBluetoothPreferencesPage> with Components {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            '蓝牙偏好设置',
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
              '连接设置',
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
          ),
          buildListTile(
            title: '明天自动开启',
            subtitle: '关闭蓝牙后将于明天重新打开，便于重新连接已配对设备',
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
          const Divider(height: 1),
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
        ],
      ),
    );
  }
}
