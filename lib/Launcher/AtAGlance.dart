import 'package:calicy_settings/Apps/AppsInfo.dart';
import 'package:flutter/material.dart';

import '../Components.dart';

class LauncherATAGlancePage extends StatefulWidget {
  const LauncherATAGlancePage({super.key});

  @override
  State<LauncherATAGlancePage> createState() => _LauncherATAGlancePageState();
}

class _LauncherATAGlancePageState extends State<LauncherATAGlancePage>
    with Components {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '资讯一览',
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
          ListTile(
            tileColor: Colors.blue,
            leading: const Icon(null),
            title: const Text("资讯一览",
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
          SizedBox(
            height: 10,
          ),
          const ListTile(
            title: Text(
              '资讯一览会使用手机中的信息和您在 Calicy 产品中的活动记录，在主屏幕和锁定屏幕上适时显示您需要的内容。',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            height: 1,
          ),
          buildListTile(
            icon: Icons.wb_sunny_outlined,
            title: '天气',
            subtitle: '天气信息',
            trailing: Switch(
              value: true,
              onChanged: (value) {},
            ),
            onTap: () {},
          ),
          buildListTile(
            icon: Icons.dehaze,
            title: '空气质量',
            subtitle: '空气质量警报',
            trailing: Switch(
              value: true,
              onChanged: (value) {},
            ),
            onTap: () {},
          ),
          buildListTile(
            icon: Icons.warning_amber_outlined,
            title: '警报',
            subtitle: '恶劣天气警报',
            trailing: Switch(
              value: true,
              onChanged: (value) {},
            ),
            onTap: () {},
          ),
          buildListTile(
            icon: Icons.warning_amber_outlined,
            title: '地震警报',
            subtitle: '检测到附近发生超过 4.5 级的地震时发出警报',
            trailing: Switch(
              value: true,
              onChanged: (value) {},
            ),
            onTap: () {},
          ),
          buildListTile(
            icon: Icons.access_time_outlined,
            title: '即将进行',
            subtitle: '日历、活动、酒店预订和提醒',
            trailing: Switch(
              value: true,
              onChanged: (value) {},
            ),
            onTap: () {},
          ),
          buildListTile(
            icon: Icons.work_outline,
            title: '工作资料',
            subtitle: '工作资料中的日历、活动和提醒',
            trailing: Switch(
              value: true,
              onChanged: (value) {},
            ),
            onTap: () {},
          ),
          buildListTile(
            icon: Icons.local_grocery_store_outlined,
            title: '食物和杂货订单',
            subtitle: '送货和自提状态',
            trailing: Switch(
              value: true,
              onChanged: (value) {},
            ),
            onTap: () {},
          ),
          buildListTile(
            icon: Icons.local_shipping_outlined,
            title: '包裹递送',
            subtitle: '显示包裹递送或收取时间',
            trailing: Switch(
              value: true,
              onChanged: (value) {},
            ),
            onTap: () {},
          ),
          buildListTile(
            icon: Icons.directions_bus_outlined,
            title: '通勤',
            subtitle: '路况信息和行程时间',
            trailing: Switch(
              value: true,
              onChanged: (value) {},
            ),
            onTap: () {},
          ),
          buildListTile(
            icon: Icons.directions_car_outlined,
            title: '出发时间',
            subtitle: '针对即将参加的活动而建议的出门时间',
            trailing: Switch(
              value: true,
              onChanged: (value) {},
            ),
            onTap: () {},
          ),
          buildListTile(
            icon: Icons.local_taxi_outlined,
            title: '网约车',
            subtitle: '显示您的行程状态',
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
