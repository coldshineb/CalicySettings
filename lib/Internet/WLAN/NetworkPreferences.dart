import 'package:flutter/material.dart';

class WLANNetworkPreferencesPage extends StatefulWidget {
  const WLANNetworkPreferencesPage({super.key});

  @override
  State<WLANNetworkPreferencesPage> createState() =>
      _WLANNetworkPreferencesPageState();
}

class _WLANNetworkPreferencesPageState
    extends State<WLANNetworkPreferencesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '网络偏好设置',
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
              '网络加速',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ),
          _buildInternetListTile(
            title: '网络切换',
            subtitle: '无线局域网信号弱或不可用时，切换至其它可用无线局域网或移动网络',
            trailing: Switch(
              value: true,
              onChanged: (value) {},
            ),
            onTap: () {},
          ),
          _buildInternetListTile(
            title: '双无线局域网加速',
            subtitle: '同时连接两个无线局域网进行加速',
            onTap: () {},
          ),
          _buildInternetListTile(
            title: '移动网络加速',
            subtitle: '无线局域网网络质量不佳时，同时使用移动网络进行加速',
            trailing: Switch(
              value: true,
              onChanged: (value) {},
            ),
            onTap: () {},
          ),
          const Divider(height: 1),
          _buildInternetListTile(
            icon: Icons.home_rounded,
            title: '自动开启无线局域网',
            subtitle: '位于已保存的高品质网络（例如您的家庭网络）附近时自动重新开启无线局域网',
            trailing: Switch(
              value: true,
              onChanged: (value) {},
            ),
            onTap: () {},
          ),
          _buildInternetListTile(
            icon: Icons.notifications,
            title: '附近有公共网络时发出通知',
            subtitle: '有可用的高品质公共网络时通知我',
            trailing: Switch(
              value: true,
              onChanged: (value) {},
            ),
            onTap: () {},
          ),
          const Divider(height: 1),
          _buildInternetListTile(
            title: '允许连接 WEP 网络',
            subtitle: 'WEP 是较旧的安全协议，其安全性较低',
            trailing: Switch(
              value: true,
              onChanged: (value) {},
            ),
            onTap: () {},
          ),
          _buildInternetListTile(
            title: '安装证书',
            onTap: () {},
          ),
          _buildInternetListTile(
            title: '无线局域网直连',
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
              style: const TextStyle(color: Colors.grey),
            )
          : null,
      trailing: trailing,
      onTap: onTap,
    );
  }
}
