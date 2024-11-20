import 'package:calicy_settings/Apps/AppsInfo.dart';
import 'package:flutter/material.dart';

import '../Components.dart';
import 'Hardware.dart';
class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> with Components {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '关于本机',
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
              '基本信息',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
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
            title: '电话号码（SIM 卡插槽 1）',
            subtitle: '未知',
            onTap: () {
            },
          ),
          buildListTile(
            title: '电话号码（SIM 卡插槽 2）',
            subtitle: '无 SIM 卡',
            onTap: () {
            },
          ),
          Divider(
            height: 1,
          ),
          const ListTile(
            title: Text(
              '法律法规',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ),
          buildListTile(
            title: '法律信息',
            onTap: () {
            },
          ),
          buildListTile(
            title: '监管标签',
            onTap: () {},
          ),
          buildListTile(
            title: '有限保修',
            subtitle: '至2025年1月1日',
            onTap: () {},
          ),
          buildListTile(
            title: '安全和监管手册',
            onTap: () {},
          ),
          const Divider(
            height: 1,
          ),
          const ListTile(
            title: Text(
              '设备详细信息',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ),
          buildListTile(
            title: 'SIM 卡状态（SIM 卡插槽 1）',
            subtitle: '未知',
            onTap: () {},
          ),
          buildListTile(
            title: 'SIM 卡状态（SIM 卡插槽 2）',
            subtitle: '无 SIM 卡',
          ),
          buildListTile(
            title: '型号',
            subtitle: 'Calicy Demo',
            onTap: () {},
          ),
          buildListTile(
            title: 'EID',
            subtitle: '89000000000000000000000000000000',
            onTap: () {},
          ),
          buildListTile(
            title: 'IMEI（SIM 卡插槽 1）',
            subtitle: '356789123456789',
            onTap: () {},
          ),
          buildListTile(
            title: 'IMEI（SIM 卡插槽 2）',
            subtitle: '356789123456782',
            onTap: () {},
          ),
          buildListTile(
            title: 'Calicy 版本',
            subtitle: '170',
            onTap: () {

            },
          ),
          buildListTile(
            title: '硬件信息',
            onTap: () {
              Navigator.push(
                context,calicyPageRoute(
                  const AboutHardwarePage()),
              );
            },
          ),
          Divider(
            height: 1,
          ),
          const ListTile(
            title: Text(
              '设备标识符',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ),
          buildListTile(
            title: 'IP 地址',
            subtitle: '2001:0db8:85a3:0000:0000:8a2e:0370:7334\n192.168.1.1',
            onTap: () {},
          ),
          buildListTile(
            title: '设备无线局域网 MAC 地址',
            subtitle: '00:11:22:33:44:55',
            onTap: () {},
          ),
          buildListTile(
            title: '蓝牙地址',
            subtitle: '00:11:22:33:44:55',
            onTap: () {},
          ),
          buildListTile(
            title: '运行时间',
            subtitle: '1:2:3',
            onTap: () {},
          ),
          buildListTile(
            title: '构建号',
            subtitle: '200000',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
