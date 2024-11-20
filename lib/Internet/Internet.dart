import 'package:flutter/material.dart';

import '../Components.dart';
import 'DataSaver.dart';
import 'Hotspot/Hotspot.dart';
import 'SIM/SIM.dart';
import 'VPN.dart';
import 'WLAN/WLAN.dart';

class InternetPage extends StatefulWidget {
  const InternetPage({super.key});

  @override
  State<InternetPage> createState() => _InternetPageState();
}

class _InternetPageState extends State<InternetPage> with Components {
  int _dnsMode = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '网络和互联网',
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
          buildListTile(
              icon: Icons.signal_wifi_4_bar,
              title: '无线局域网',
              subtitle: '已连接到 Calicy Public',
              onTap: () {
                Navigator.push(context, calicyPageRoute(const WLANPage()));
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
              )),
          buildListTile(
            icon: Icons.sim_card_outlined,
            title: '移动网络',
            subtitle: 'Calicy 移动',
            onTap: () {
              Navigator.push(context, calicyPageRoute(const SIMPage()));
            },
          ),
          buildListTile(
            icon: Icons.airplanemode_active,
            title: '飞行模式',
            trailing: Switch(
              value: false,
              onChanged: (value) {},
            ),
            onTap: () {},
          ),
          buildListTile(
            icon: Icons.wifi_tethering,
            title: '热点和网络共享',
            subtitle: '已关闭',
            onTap: () {
              Navigator.push(context, calicyPageRoute(const HotspotPage()));
            },
          ),
          buildListTile(
            icon: Icons.data_usage,
            title: '流量节省程序',
            subtitle: '已关闭',
            onTap: () {
              Navigator.push(context, calicyPageRoute(const DataSaverPage()));
            },
          ),
          buildListTile(
            icon: Icons.vpn_key_outlined,
            title: 'VPN',
            subtitle: '未连接',
            onTap: () {
              Navigator.push(context, calicyPageRoute(const VPNPage()));
            },
          ),
          Divider(
            height: 1,
          ),
          buildListTile(
            title: '专用 DNS',
            subtitle: '自动',
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog.adaptive(
                        title: const Text(
                          '选择专用 DNS 模式',
                          style: TextStyle(fontSize: 20),
                        ),
                        content: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RadioListTile<int>(
                                title: const Text('关闭'),
                                value: 0,
                                groupValue: _dnsMode,
                                onChanged: (value) {
                                  setState(() {
                                    _dnsMode = value!;
                                  });
                                },
                              ),
                              RadioListTile<int>(
                                title: const Text('自动'),
                                value: 1,
                                groupValue: _dnsMode,
                                onChanged: (value) {
                                  setState(() {
                                    _dnsMode = value!;
                                  });
                                },
                              ),
                              RadioListTile<int>(
                                title: const Text('专用 DNS 提供商主机名'),
                                value: 2,
                                groupValue: _dnsMode,
                                onChanged: (value) {
                                  setState(() {
                                    _dnsMode = value!;
                                  });
                                },
                              ),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: TextField(
                                  decoration: InputDecoration(
                                    labelText: 'DNS 提供商主机名',
                                  ),
                                ),
                              ),
                              const Text(
                                '详细了解专用 DNS 功能',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                        buttonPadding: const EdgeInsets.all(16),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('取消'),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('确定'),
                          ),
                        ],
                      ));
            },
          ),
          buildListTile(
            title: '流量使用情况',
            onTap: () {},
          ),
          buildListTile(
            title: '自适应连接',
            subtitle: '自动管理您的网络连接，从而延长电池续航时间并提升设备性能',
            onTap: () {},
            trailing: Switch(
              value: true,
              onChanged: (value) {},
            ),
          ),
        ],
      ),
    );
  }
}
