import 'package:calicy_settings/Apps/AppsInfo.dart';
import 'package:calicy_settings/Battery/BatterySharing.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../Components.dart';

class BatteryPage extends StatefulWidget {
  const BatteryPage({super.key});

  @override
  State<BatteryPage> createState() => _BatteryPageState();
}

class _BatteryPageState extends State<BatteryPage> with Components {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '电池',
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
              '电池使用量',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(30),
            height: 200,
            child: LineChart(
              LineChartData(
                minY: 0,
                gridData: FlGridData(show: false),
                titlesData: FlTitlesData(
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: (value, meta) {
                        switch (value.toInt()) {
                          case 0:
                            return const Text('5h',
                                style: TextStyle(color: Colors.grey));
                          case 1:
                            return const Text('4h',
                                style: TextStyle(color: Colors.grey));
                          case 2:
                            return const Text('3h',
                                style: TextStyle(color: Colors.grey));
                          case 3:
                            return const Text('2h',
                                style: TextStyle(color: Colors.grey));
                          case 4:
                            return const Text('1h',
                                style: TextStyle(color: Colors.grey));
                          case 5:
                            return const Text('现在',
                                style: TextStyle(color: Colors.grey));
                          default:
                            return const Text('',
                                style: TextStyle(color: Colors.grey));
                        }
                      },
                      interval: 1, // Ensure only defined points are shown
                    ),
                  ),
                  leftTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      reservedSize: 40,
                      getTitlesWidget: (value, meta) {
                        return Text(
                          '${value.toInt()}%',
                          style: TextStyle(color: Colors.grey),
                        );
                      },
                    ),
                  ),
                  topTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  rightTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                ),
                borderData: FlBorderData(show: false),
                lineBarsData: [
                  LineChartBarData(
                    dotData: FlDotData(show: false),
                    spots: [
                      FlSpot(0, 100),
                      FlSpot(1, 100),
                      FlSpot(3, 90),
                      FlSpot(5, 80),
                    ],
                    isCurved: true,
                    color: Colors.blue,
                    barWidth: 2,
                    belowBarData: BarAreaData(
                      show: true,
                      gradient: LinearGradient(
                        colors: [
                          Colors.blue.withOpacity(0.3),
                          Colors.blue.withOpacity(0.1),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          buildListTile(
            title: '电池使用情况',
            subtitle: '查看各个应用和硬件的电池使用情况',
            onTap: () {},
          ),
          buildListTile(
            title: '高性能模式',
            subtitle: '提升性能，但会消耗更多电量',
            onTap: () {},
            trailing: Switch(
              value: false,
              onChanged: (value) {},
            ),
          ),
          const Divider(
            height: 1,
          ),
          const ListTile(
            title: Text(
              '电量控制',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ),
          buildListTile(
            title: '省电模式',
            subtitle: '在电量降到 20% 时开启',
            onTap: () {},
          ),
          buildListTile(
            title: '自适应充电',
            subtitle: '记住您的日常充电习惯，等到需要时再充满电',
            trailing: Switch(
              value: true,
              onChanged: (value) {},
            ),
            onTap: () {},
          ),buildListTile(
            title: '自适应省电',
            subtitle: '在夜间睡眠时关闭非必要功能，减少电量消耗',
            trailing: Switch(
              value: true,
              onChanged: (value) {},
            ),
            onTap: () {},
          ),
          buildListTile(
            title: '最大容量',
            subtitle: '100%',
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text('最大容量'),
                    content: Text(
                        '手机电池是易耗品，随着使用时间的增加，电池容量会逐渐降低。\n为了保证您的手机正常使用，建议在电池容量降低到 80% 时更换电池。\n\n详细了解电池容量'),
                    buttonPadding: const EdgeInsets.all(16),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('确定'),
                      ),
                    ],
                  );
                },
              );
            },
          ),
          const Divider(
            height: 1,
          ),
          const ListTile(
            title: Text(
              '充电功能',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ),
          buildListTile(
            title: '有线快速充电',
            subtitle: '使用兼容的快速充电器时，充电速度更快',
            trailing: Switch(
              value: true,
              onChanged: (value) {},
            ),
            onTap: () {},
          ),
          buildListTile(
            title: '电池共享',
            subtitle: '已开启',
            onTap: () {
              Navigator.push(
                context,
                calicyPageRoute(const BatteryBatterySharingPage()),
              );
            },
          ),
          buildListTile(
            title: '无线充电固件升级',
            onTap: () {},
          ),
          Divider(
            height: 1,
          ),
          buildListTile(
            title: '状态栏显示电池电量百分比',
            onTap: () {},
            trailing: Switch(
              value: true,
              onChanged: (value) {},
            ),
          ),
          Divider(
            height: 1,
          ),
          buildListTile(
            title: '电池温度',
            subtitle: '25°C',
          ),
          const ListTile(
            leading: Icon(Icons.info_outline),
          ),
          const ListTile(
            title: Text(
              '剩余电量为大致数据，且可能会因使用情形而变化。',
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
          )
        ],
      ),
    );
  }
}
