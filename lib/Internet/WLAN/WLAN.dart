import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Components.dart';
import 'AddNetwork.dart';
import 'NetworkPreferences.dart';
import 'SavedNetwork.dart';

class WLANPage extends StatefulWidget {
  const WLANPage({super.key});

  @override
  State<WLANPage> createState() => _WLANPageState();
}

class _WLANPageState extends State<WLANPage> with Components {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '无线局域网',
          style: TextStyle(fontSize: 18),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          Tooltip(
            message: '刷新',
            child: IconButton(
              icon: const Icon(Icons.refresh),
              onPressed: () {
                setState(() {});
              },
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          FutureBuilder(
            future: Future.delayed(const Duration(seconds: 2)),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: Stack(
                    children: [
                      ListTile(
                        tileColor: Colors.blue,
                        leading: const Icon(null),
                        title: const Text("无线局域网",
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
                      const Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: LinearProgressIndicator(
                          minHeight: 4,
                        ),
                      ),
                    ],
                  ),
                );
                ;
              } else {
                return Column(
                  children: [
                    ListTile(
                      tileColor: Colors.blue,
                      leading: const Icon(null),
                      title: const Text("无线局域网",
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
                    const Divider(height: 1),
                    ListTile(
                      leading: const CircleAvatar(
                        backgroundColor: Colors.transparent,
                        child:
                            Icon(Icons.signal_wifi_4_bar, color: Colors.blue),
                      ),
                      title: const Text('Calicy Public',
                          maxLines: 1, overflow: TextOverflow.ellipsis),
                      subtitle: const Text('已连接'),
                      trailing: const Icon(
                        Icons.settings_outlined,
                        color: Colors.blue,
                      ),
                      onTap: () {},
                    ),
                    buildListTile(
                      icon: Icons.signal_wifi_4_bar,
                      title: 'Calicy Private',
                      subtitle: '已保存',
                      trailing: const Icon(Icons.settings_outlined),
                      onTap: () {},
                    ),
                    buildListTile(
                      icon: Icons.signal_wifi_4_bar,
                      title: 'Other1',
                      trailing: const Icon(Icons.lock_outline),
                      onTap: () {},
                    ),
                    buildListTile(
                      icon: Icons.signal_wifi_4_bar,
                      title: 'Other2',
                      trailing: const Icon(Icons.lock_outline),
                      onTap: () {},
                    ),
                    buildListTile(
                      icon: Icons.network_wifi_3_bar,
                      title: 'Other3',
                      trailing: const Icon(Icons.lock_outline),
                      onTap: () {},
                    ),
                    buildListTile(
                      icon: Icons.network_wifi_3_bar,
                      title: 'Other4',
                      trailing: const Icon(Icons.lock_outline),
                      onTap: () {},
                    ),
                  ],
                );
              }
            },
          ),
          buildListTile(
            title: '添加网络',
            icon: Icons.add,
            onTap: () {
              Navigator.push(
                  context, calicyPageRoute(const WLANAddNetworkPage()));
            },
            trailing: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                VerticalDivider(
                  thickness: 1,
                  width: 20,
                ),
                SizedBox(
                  width: 25,
                  child: Icon(Icons.qr_code),
                ),
              ],
            ),
          ),
          const Divider(height: 1),
          const ListTile(
            title: Text(
              '高级设置',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ),
          buildListTile(
            title: '网络偏好设置',
            subtitle: '网络加速、自动重新开启无线局域网、安装证书',
            onTap: () {
              Navigator.push(
                  context, calicyPageRoute(const WLANNetworkPreferencesPage()));
            },
          ),
          buildListTile(
            title: '已保存的网络',
            subtitle: '2 个网络',
            onTap: () {
              Navigator.push(
                  context, calicyPageRoute(const WLANSavedNetworkPage()));
            },
          ),
        ],
      ),
    );
  }
}
