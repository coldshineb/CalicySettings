import 'package:flutter/material.dart';

import '../Components.dart';
import 'AllDevices.dart';
import 'Bluetooth.dart';
import 'CalicyConnect.dart';
import 'DevicesInfo.dart';
import 'NFC.dart';
import 'QuickShare.dart';

class DevicePage extends StatefulWidget {
  const DevicePage({super.key});

  @override
  State<DevicePage> createState() => _DevicePageState();
}

class _DevicePageState extends State<DevicePage> with Components {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '连接的设备',
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
          buildListTile(icon: Icons.add, title: '与新设备配对', onTap: () {}),
          const Divider(
            height: 1,
          ),
          const ListTile(
            title: Text(
              '保存的设备',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ),
          buildListTile(
            icon: Icons.earbuds_outlined,
            title: 'Calicy Earbuds 2',
            subtitle: '已连接',
            onTap: () {
              Navigator.push(
                  context,
                  calicyPageRoute(
                      const DevicesDevicesInfoPage(title: "Calicy Earbuds 2")));
            },
          ),
          buildListTile(
            icon: Icons.earbuds_outlined,
            title: 'Calicy Earbuds',
            subtitle: '已保存',
            onTap: () {
              Navigator.push(
                  context,
                  calicyPageRoute(
                      const DevicesDevicesInfoPage(title: "Calicy Earbuds")));
            },
          ),
          buildListTile(
            icon: Icons.arrow_forward,
            title: '查看全部',
            onTap: () {
              Navigator.push(
                  context, calicyPageRoute(const DevicesAllDevicesPage()));
            },
          ),
          const Divider(
            height: 1,
          ),
          buildListTile(
            icon: Icons.bluetooth,
            title: '蓝牙',
            onTap: () {
              Navigator.push(
                  context, calicyPageRoute(const DevicesBluetoothPage()));
            },
          ),
          buildListTile(
            icon: Icons.nfc,
            title: '近场通信',
            subtitle: '已开启',
            onTap: () {
              Navigator.push(context, calicyPageRoute(const DevicesNFCPage()));
            },
          ),
          buildListTile(
            icon: Icons.cast,
            title: '投屏',
            subtitle: '未连接',
            onTap: () {},
          ),
          buildListTile(
            icon: Icons.print,
            title: '打印',
            subtitle: '1 个打印服务已开启',
            onTap: () {},
          ),
          buildListTile(
            icon: Icons.phonelink,
            title: '互通协作',
            subtitle: '与其它 Calicy 设备协作',
            onTap: () {
              Navigator.push(
                  context, calicyPageRoute(const DevicesCalicyConnectPage()));
            },
          ),
          buildListTile(
            icon: Icons.swap_horizontal_circle_outlined,
            title: '快速分享',
            subtitle: '与附近的设备分享文件',
            onTap: () {
              Navigator.push(
                  context, calicyPageRoute(const DevicesQuickSharePage()));
            },
          ),
          buildListTile(
            icon: Icons.directions_car_outlined,
            title: '汽车',
            subtitle: '在车载显示屏上使用应用',
            onTap: () {},
          ),
          buildListTile(
            title: '超宽带',
            subtitle: '帮助判断附近支持超宽带的设备的相对位置',
            onTap: () {},
            trailing: Switch(
              value: true,
              onChanged: (bool value) {
                setState(() {});
              },
            ),
          ),
        ],
      ),
    );
  }
}
