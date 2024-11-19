import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Components.dart';

class HotspotPage extends StatefulWidget {
  const HotspotPage({super.key});

  @override
  State<HotspotPage> createState() => _HotspotPageState();
}

class _HotspotPageState extends State<HotspotPage> with Components {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            '热点与网络共享',
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
            height: 10,
          ),
          const ListTile(
            title: Text(
              '使用热点和网络共享功能，让其他设备能通过您的无线局域网或移动数据网络连接到互联网。应用还可以通过创建热点。与附近的设备共享内容。',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            height: 1,
          ),
          buildListTile(
              title: '无线局域网热点',
              subtitle: '目前没有与其他设备共享互联网连接或内容',
              onTap: () {},
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const VerticalDivider(
                    thickness: 1,
                  ),
                  Switch(
                    value: false,
                    onChanged: (value) {
                      setState(() {
                        value = value;
                      });
                    },
                  ),
                ],
              )),
          buildListTile(
            title: 'USB 网络共享',
            trailing: const Switch(
              value: false,
              onChanged: null,
            ),
          ),
          buildListTile(
            title: '蓝牙网络共享',
            onTap: () {},
            trailing: Switch(
              value: false,
              onChanged: (
                value,
              ) {},
            ),
          ),
          buildListTile(
            title: '以太网络共享',
            trailing: const Switch(
              value: false,
              onChanged: null,
            ),
          ),
        ],
      ),
    );
  }
}
