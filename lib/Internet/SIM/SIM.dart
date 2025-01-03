import 'package:flutter/material.dart';

import '../../Components.dart';
import 'SIMInfo.dart';

class SIMPage extends StatefulWidget {
  const SIMPage({super.key});

  @override
  State<SIMPage> createState() => _SIMPageState();
}

class _SIMPageState extends State<SIMPage> with Components {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'SIM 卡',
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
          buildListTile(
            icon: Icons.sim_card_download_outlined,
            title: 'Calicy 移动',
            onTap: () {
              Navigator.push(
                context,
                calicyPageRoute(const SIMSIMInfoPage()),
              );
            },
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const VerticalDivider(
                  thickness: 1,
                ),
                Switch(
                  value: true,
                  onChanged: (value) {
                    setState(() {
                      value = value;
                    });
                  },
                ),
              ],
            ),
          ),
          buildListTile(
            icon: Icons.add,
            title: '添加 SIM 卡',
            onTap: () {},
          ),
          const Divider(height: 1),
          const ListTile(
            title: Text(
              '移动数据',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ),
          buildListTile(
            title: '移动数据',
            subtitle: '通过移动网络访问数据',
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
        ],
      ),
    );
  }
}
