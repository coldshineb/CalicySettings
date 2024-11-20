import 'package:flutter/material.dart';

import '../Components.dart';
import 'Bluetooth/BluetoothPreferences.dart';

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
          const Divider(height: 1),
          buildListTile(
            title: '蓝牙偏好设置',
            subtitle: '明天自动开启、设备黑名单、显示无名称设备',
            onTap: () {
              Navigator.push(
                context,
                calicyPageRoute(
                    const DevicesBluetoothBluetoothPreferencesPage()),
              );
            },
          ),
          const ListTile(
            leading: Icon(Icons.info_outline),
          ),
          const ListTile(
            title: Text(
              '蓝牙处于开启状态时，您的设备可以与附近的其它蓝牙设备通信。快速分享、查找我的设备等功能会使用蓝牙。',
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
          )
        ],
      ),
    );
  }
}
