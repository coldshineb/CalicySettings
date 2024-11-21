import 'package:flutter/material.dart';

import '../Components.dart';

class BatteryBatterySharingPage extends StatefulWidget {
  const BatteryBatterySharingPage({super.key});

  @override
  State<BatteryBatterySharingPage> createState() =>
      _BatteryBatterySharingPageState();
}

class _BatteryBatterySharingPageState extends State<BatteryBatterySharingPage>
    with Components {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '电池共享',
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
          ListTile(
            tileColor: Colors.blue,
            leading: const Icon(null),
            title: const Text("电池共享",
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
          SizedBox(
            height: 10,
          ),
          const ListTile(
            title: Text(
              '将其它设备放在手机的背面，即可为这些设备充电。',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            height: 1,
          ),
          buildListTile(
            title: '停止充电阈值',
            subtitle: '当手机电量低于 20% 时停止电池共享',
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text('停止充电阈值'),
                    content: TextField(
                      controller: TextEditingController(text: '20'),
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
            title: '自动开启',
            subtitle: '当手机连接到充电器时，此功能会自动开启并在短时间内保持开启状态',
            trailing: Switch(
              value: false,
              onChanged: (value) {},
            ),
            onTap: () {},
          ),
          const ListTile(
            leading: Icon(Icons.info_outline),
          ),
          const ListTile(
            title: Text(
              '电池共享功能适用于兼容的入耳式耳机、手机等设备。\n\n使用此功能时，手机耗电速度将变快。如果系统未检测到其它设备，电池共享功能会在几分钟后自动关闭。为提升充电效率，请取下手机保护套以及其它可能会干扰充电的物品，例如金属物体。',
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
          )
        ],
      ),
    );
  }
}
