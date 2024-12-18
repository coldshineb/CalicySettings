import 'package:flutter/material.dart';

import '../Components.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({super.key});

  @override
  State<LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> with Components {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '位置信息',
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
            tileColor: Colors.grey,
            leading: const Icon(null),
            title: const Text('位置信息',
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
              '近期位置信息访问',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ),
          buildListTile(
            icon: Icons.arrow_forward,
            title: '查看全部',
            onTap: () {},
          ),
          Divider(
            height: 1,
          ),
          buildListTile(title: '应用位置信息权限', onTap: () {}),
          buildListTile(title: '位置信息服务', onTap: () {}),
        ],
      ),
    );
  }
}
