import 'package:flutter/material.dart';

import '../Components.dart';

class VPNPage extends StatefulWidget {
  const VPNPage({super.key});

  @override
  State<VPNPage> createState() => _VPNPageState();
}

class _VPNPageState extends State<VPNPage> with Components {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'VPN',
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
              message: '添加 VPN',
              child: IconButton(
                icon: const Icon(Icons.add),
                onPressed: () {},
              ),
            ),
          ]),
      body: ListView(
        children: [
          ListTile(
            tileColor: Colors.grey,
            leading: const Icon(null),
            title: const Text("VPN",
                style: TextStyle(color: Colors.white),
                maxLines: 1,
                overflow: TextOverflow.ellipsis),
            trailing: Switch(
              value: false,
              onChanged: (value) {},
            ),
            onTap: () {},
          ),
          const ListTile(
            title: Text(
              '内置',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ),
          buildListTile(
            icon: Icons.security,
            title: 'Calicy VPN',
            onTap: () {},
            trailing: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                VerticalDivider(
                  thickness: 1,
                ),
                SizedBox(
                  width: 40,
                  child: Icon(Icons.settings_outlined),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
