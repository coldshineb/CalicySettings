import 'package:calicy_settings/Apps/AppsInfo.dart';
import 'package:flutter/material.dart';

import '../Components.dart';
class AboutHardwarePage extends StatefulWidget {
  const AboutHardwarePage({super.key});

  @override
  State<AboutHardwarePage> createState() => _AboutHardwarePageState();
}

class _AboutHardwarePageState extends State<AboutHardwarePage> with Components {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '硬件信息',
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
              '基本',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ),
          buildListTile(
            icon: Icons.phone_android_outlined,
            title: '处理器',
            subtitle: 'Calicy A1',
            onTap: () {
            },
          ),
          buildListTile(
            icon: Icons.screenshot_outlined,
            title: '屏幕',
            subtitle: '6.73 英寸，3200*1440 像素',
            onTap: () {
            },
          ),
          buildListTile(
            icon: Icons.memory_outlined,
            title: '内存',
            subtitle: '32 GB',
            onTap: () {
            },
          ),
          buildListTile(
            icon: Icons.battery_std_outlined,
            title: '电池',
            subtitle: '6500 mAh',
            onTap: () {
            },
          ),
          Divider(
            height: 1,
          ),
          const ListTile(
            title: Text(
              '影像',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ),
          buildListTile(
            icon: Icons.camera_front_outlined,
            title: '前置摄像头',
            subtitle: '48 MP',
            onTap: () {
            },
          ),
          buildListTile(
            icon: Icons.camera_alt_outlined,
            title: '后置摄像头',
            subtitle: '108 MP + 50 MP + 50 MP',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
