import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'NetworkPreferences.dart';

class WLANPage extends StatefulWidget {
  const WLANPage({super.key});

  @override
  State<WLANPage> createState() => _WLANPageState();
}

class _WLANPageState extends State<WLANPage> {
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
                      _buildInternetListTile(
                        title: '启用',
                        trailing: Switch(
                          value: true,
                          onChanged: (value) {},
                        ),
                        onTap: () {},
                      ),
                      LinearProgressIndicator(
                        minHeight: 1,
                      ),
                    ],
                  ),
                );
                ;
              } else {
                return Column(
                  children: [
                    _buildInternetListTile(
                      title: '启用',
                      trailing: Switch(
                        value: true,
                        onChanged: (value) {},
                      ),
                      onTap: () {},
                    ),
                    Divider(height: 1),
                    _buildInternetListTile(
                      icon: Icons.signal_wifi_4_bar,
                      title: 'Calicy Public',
                      subtitle: '已连接',
                      trailing: const Icon(Icons.settings_outlined),
                      onTap: () {},
                    ),
                    _buildInternetListTile(
                      icon: Icons.signal_wifi_4_bar,
                      title: 'Calicy Private',
                      subtitle: '已保存',
                      trailing: const Icon(Icons.settings_outlined),
                      onTap: () {},
                    ),
                    _buildInternetListTile(
                      icon: Icons.signal_wifi_4_bar,
                      title: 'Other1',
                      trailing: const Icon(Icons.lock_outline),
                      onTap: () {},
                    ),
                    _buildInternetListTile(
                      icon: Icons.signal_wifi_4_bar,
                      title: 'Other2',
                      trailing: const Icon(Icons.lock_outline),
                      onTap: () {},
                    ),
                    _buildInternetListTile(
                      icon: Icons.network_wifi_3_bar,
                      title: 'Other3',
                      trailing: const Icon(Icons.lock_outline),
                      onTap: () {},
                    ),
                    _buildInternetListTile(
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
          _buildInternetListTile(title: '添加网络', icon: Icons.add, onTap: () {}),
          Divider(height: 1),
          ListTile(
            title: Text(
              '高级设置',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ),
          _buildInternetListTile(
            title: '网络偏好设置',
            subtitle: '网络加速、自动重新开启无线局域网、安装证书',
            onTap: () {
              Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context) => const WLANNetworkPreferencesPage()));
            },
          ),
          _buildInternetListTile(
            title: '已保存的网络',
            subtitle: '2 个网络',
            onTap: () {},
          ),
        ],
      ),
    );
  }

  ListTile _buildInternetListTile({
    required String title,
    required VoidCallback onTap,
    trailing,
    subtitle,
    icon,
  }) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.transparent,
        child: Icon(icon, color: Colors.grey[500]),
      ),
      title: Text(title, maxLines: 1, overflow: TextOverflow.ellipsis),
      subtitle: subtitle != null
          ? Text(
              subtitle,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(color: Colors.grey),
            )
          : null,
      trailing: trailing,
      onTap: onTap,
    );
  }
}
