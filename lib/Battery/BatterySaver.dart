import 'package:flutter/material.dart';

import '../Components.dart';

class BatteryBatterySaverPage extends StatefulWidget {
  const BatteryBatterySaverPage({super.key});

  @override
  State<BatteryBatterySaverPage> createState() =>
      _BatteryBatterySaverPageState();
}

class _BatteryBatterySaverPageState extends State<BatteryBatterySaverPage>
    with Components {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            '省电模式',
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
            title: const Text("省电模式",
                style: TextStyle(color: Colors.white),
                maxLines: 1,
                overflow: TextOverflow.ellipsis),
            trailing: Switch(
              value: false,
              onChanged: (value) {},
            ),
            onTap: () {},
          ),
          RadioListTile(
            title: const Text('标准省电模式'),
            subtitle: const Text('限制视觉效果和后台活动。开启深色主题（如果尚未开启）。'),
            value: 0,
            groupValue: 0,
            onChanged: (value) {},
          ),
          RadioListTile(
            title: const Text('超级省电模式'),
            subtitle: const Text('包含上方所列的所有更改。还会暂停非必需应用及其通知。'),
            value: 1,
            groupValue: 0,
            onChanged: (value) {},
            secondary: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                VerticalDivider(thickness: 1, width: 20),
                SizedBox(
                  width: 25,
                  child: const Icon(Icons.settings_outlined),
                )
              ],
            ),
          ),
          const Divider(height: 1),
          const ListTile(
            title: Text(
              '时间表和提醒',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ),
          buildListTile(
            title: '视电池电量开启',
            subtitle: '在电量降至您设置的水平时开启省电模式',
            trailing: Switch(
              value: true,
              onChanged: (value) {},
            ),
            onTap: () {},
          ),
          Slider(
              value: 20,
              onChanged: (value) {},
              min: 20,
              max: 100,
              divisions: 4,
              label: '20%'),
          buildListTile(
            title: '电量充到 90% 时关闭',
            trailing: Switch(
              value: false,
              onChanged: (value) {},
            ),
            onTap: () {},
          ),
          buildListTile(
            title: '省电模式提醒',
            subtitle: '在电量低时接收提醒',
            trailing: Switch(
              value: true,
              onChanged: (value) {},
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
