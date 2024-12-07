import 'package:calicy_settings/Display/DarkTheme.dart';
import 'package:calicy_settings/Display/NightVision.dart';
import 'package:flutter/material.dart';

import '../Components.dart';

class DevicesCalicyConnectPage extends StatefulWidget {
  const DevicesCalicyConnectPage({super.key});

  @override
  State<DevicesCalicyConnectPage> createState() =>
      _DevicesCalicyConnectPageState();
}

class _DevicesCalicyConnectPageState extends State<DevicesCalicyConnectPage>
    with Components {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '互通协作',
          style: TextStyle(fontSize: 18),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
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
            title: const Text("互通协作",
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
          const SizedBox(
            height: 10,
          ),
          const ListTile(
            title: Text(
              '已登录您 Calicy 账号的其它设备将能找到您的设备并与其分享内容。',
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
          const ListTile(
            title: Text(
              '通用',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ),
          buildListTile(
              icon: Icons.apps_outlined,
              title: '应用共享',
              subtitle: '在其它设备上打开本机正在使用的应用',
              trailing: Switch(
                value: true,
                onChanged: (value) {
                  setState(() {
                    value = value;
                  });
                },
              ),
              onTap: () {}),
          buildListTile(
              icon: Icons.mobile_screen_share_outlined,
              title: '桌面共享',
              subtitle: '在其它设备上访问本机桌面',
              trailing: Switch(
                value: true,
                onChanged: (value) {
                  setState(() {
                    value = value;
                  });
                },
              ),
              onTap: () {}),
          buildListTile(
              icon: Icons.copy_outlined,
              title: '剪贴板共享',
              subtitle: '在其它设备上粘贴本机复制的图片、文字',
              trailing: Switch(
                value: true,
                onChanged: (value) {
                  setState(() {
                    value = value;
                  });
                },
              ),
              onTap: () {}),
          buildListTile(
              icon: Icons.notifications_outlined,
              title: '通知共享',
              subtitle: '本机锁屏时，在其它设备上显示新通知',
              trailing: Switch(
                value: true,
                onChanged: (value) {
                  setState(() {
                    value = value;
                  });
                },
              ),
              onTap: () {}),
          buildListTile(
              icon: Icons.call_outlined,
              title: '通话共享',
              subtitle: '在其它设备上接听本机的来电',
              trailing: Switch(
                value: true,
                onChanged: (value) {
                  setState(() {
                    value = value;
                  });
                },
              ),
              onTap: () {}),
          buildListTile(
              icon: Icons.network_wifi,
              title: '网络共享',
              subtitle: '在其它设备无网络连接时，自动使用本机的热点网络或无线局域网连接',
              trailing: Switch(
                value: true,
                onChanged: (value) {
                  setState(() {
                    value = value;
                  });
                },
              ),
              onTap: () {}),
          buildListTile(
              icon: Icons.camera_alt_outlined,
              title: '摄像头共享',
              subtitle: '在其它设备上使用本机作为摄像头',
              trailing: Switch(
                value: true,
                onChanged: (value) {
                  setState(() {
                    value = value;
                  });
                },
              ),
              onTap: () {}),
          Divider(
            height: 1,
          ),
          const ListTile(
            title: Text(
              '桌面设备',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ),
          buildListTile(
              icon: Icons.computer_outlined,
              title: '连接到 Calicy 桌面设备',
              subtitle: '已连接到 CalicyBook 14\'',
              onTap: () {}),
        ],
      ),
    );
  }
}
