import 'package:flutter/material.dart';

import '../../Components.dart';

class HotspotWLANHotspotPage extends StatefulWidget {
  const HotspotWLANHotspotPage({super.key});

  @override
  State<HotspotWLANHotspotPage> createState() => _HotspotWLANHotspotPageState();
}

class _HotspotWLANHotspotPageState extends State<HotspotWLANHotspotPage>
    with Components {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            '无线局域网热点',
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
            tileColor: Colors.grey,
            leading: const Icon(null),
            title: const Text("无线局域网热点",
                style: TextStyle(color: Colors.white),
                maxLines: 1,
                overflow: TextOverflow.ellipsis),
            trailing: Switch(
              value: false,
              onChanged: (value) {},
            ),
            onTap: () {},
          ),
          buildListTile(
            title: '热点名称',
            subtitle: 'Calicy Demo',
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text('热点名称'),
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
            title: '安全性',
            subtitle: 'WPA2/WPA3-个人',
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog.adaptive(
                    title: const Text('安全性'),
                    content: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RadioListTile<int>(
                            title: const Text('无'),
                            value: 0,
                            groupValue: 1,
                            onChanged: (value) {},
                          ),
                          RadioListTile<int>(
                            title: const Text('WPA2/WPA3-个人'),
                            value: 1,
                            groupValue: 1,
                            onChanged: (value) {},
                          ),
                          RadioListTile<int>(
                            title: const Text('WPA2-个人'),
                            value: 2,
                            groupValue: 1,
                            onChanged: (value) {},
                          ),
                          RadioListTile<int>(
                            title: const Text('WPA3-个人'),
                            value: 3,
                            groupValue: 1,
                            onChanged: (value) {},
                          ),
                          const Text(
                            '如果您更改热点频率，安全设置可能也会改变。',
                            style: TextStyle(color: Colors.grey, fontSize: 14),
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
            title: '热点密码',
            subtitle: '· · · · · ·',
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text('热点密码'),
                    content: TextField(
                      controller: TextEditingController(text: 'calicy'),
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
            title: '隐藏热点 SSID',
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
            title: '共享 VPN 连接',
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
          const Divider(height: 1),
          const ListTile(
            title: Text(
              '限制',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ),
          buildListTile(
            title: '单次热点流量限额',
            subtitle: '无限制',
            onTap: () {},
          ),
          buildListTile(
            title: '自动关闭热点',
            subtitle: '10 分钟内无设备连接，自动关闭热点',
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
          const Divider(height: 1),
          const ListTile(
            title: Text(
              '速度和兼容性',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ),
          buildListTile(
            title: '频段',
            subtitle: '2.4 GHz 和 5 GHz / 与大部分设备兼容',
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text('频段'),
                    content: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RadioListTile<int>(
                            title: const Text('2.4 GHz 和 5 GHz'),
                            subtitle: const Text('速度快。此双频热点与大部分设备兼容。'),
                            value: 0,
                            groupValue: 0,
                            onChanged: (value) {},
                          ),
                          RadioListTile<int>(
                            title: const Text('6 GHz'),
                            subtitle:
                                const Text('速度最快。此频段与最新设备兼容。您所在的国家或地区无法使用此功能。'),
                            value: 1,
                            groupValue: 0,
                            onChanged: (value) {},
                          ),
                          const Text(
                            '如果首选频率不可用，热点可能会使用其它频率。如果您更改频率，热点的安全设置可能也会改变。',
                            style: TextStyle(color: Colors.grey, fontSize: 14),
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
            title: '使用 Wi-Fi 6',
            subtitle: '需要支持的设备',
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
          const Divider(height: 1),
          buildListTile(
            title: '连接设备管理',
            subtitle: '无线局域网热点已关闭',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
