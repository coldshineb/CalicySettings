import 'package:flutter/material.dart';

import '../Components.dart';

class DataSaverPage extends StatefulWidget {
  const DataSaverPage({super.key});

  @override
  State<DataSaverPage> createState() => _DataSaverPageState();
}

class _DataSaverPageState extends State<DataSaverPage> with Components {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            '流量节省程序',
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
          ListTile(
            tileColor: Colors.grey,
            leading: const Icon(null),
            title: const Text("流量节省程序",
                style: TextStyle(color: Colors.white),
                maxLines: 1,
                overflow: TextOverflow.ellipsis),
            trailing: Switch(
              value: false,
              onChanged: (value) {},
            ),
            onTap: () {},
          ),
          buildListTile(
            title: '不限制移动数据用量的应用',
            subtitle: '1 个应用',
            onTap: () {},
          ),
          const ListTile(
            leading: Icon(Icons.info_outline),
          ),
          const ListTile(
            title: Text(
              '为了减少流量消耗，流量节省程序会阻止某些应用在后台收发数据。您当前使用的应用可以收发数据，但频率可能会降低。举例而言，这可能意味着图片只有在您点按之后才会显示。',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14
              ),
            ),
          ),
        ],
      ),
    );
  }
}
