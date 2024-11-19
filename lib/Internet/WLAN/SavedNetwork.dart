import 'package:flutter/material.dart';

import '../../Components.dart';

class WLANSavedNetworkPage extends StatefulWidget {
  const WLANSavedNetworkPage({super.key});

  @override
  State<WLANSavedNetworkPage> createState() => _WLANSavedNetworkPageState();
}

class _WLANSavedNetworkPageState extends State<WLANSavedNetworkPage>
    with Components {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '已保存的网络',
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
              '其它网络',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ),
          ListTile(
            leading: const CircleAvatar(
              backgroundColor: Colors.transparent,
              child: Icon(Icons.signal_wifi_4_bar, color: Colors.blue),
            ),
            title: const Text('Calicy Public',
                maxLines: 1, overflow: TextOverflow.ellipsis),
            subtitle: const Text('已连接'),
            trailing: const Icon(Icons.lock_outline),
            onTap: () {},
          ),
          buildListTile(
            icon: Icons.signal_wifi_4_bar,
            title: 'Calicy Private',
            subtitle: '自动连接已关闭',
            trailing: const Icon(Icons.lock_outline),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
