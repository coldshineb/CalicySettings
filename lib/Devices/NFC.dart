import 'package:flutter/material.dart';

import '../Components.dart';

class DevicesNFCPage extends StatefulWidget {
  const DevicesNFCPage({super.key});

  @override
  State<DevicesNFCPage> createState() => _DevicesNFCPageState();
}

class _DevicesNFCPageState extends State<DevicesNFCPage> with Components {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            '近场通信',
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
            tileColor: Colors.blue,
            leading: const Icon(null),
            title: const Text("近场通信",
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
          buildListTile(
            title: '默认付款应用',
            subtitle: 'Calicy 钱包',
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog.adaptive(
                    title: const Text('默认付款应用'),
                    content: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RadioListTile(
                              value: 0,
                              groupValue: 1,
                              onChanged: (value) {},
                              title: const Row(
                                children: [
                                  Icon(
                                    Icons.do_not_disturb_on_rounded,
                                    color: Colors.red,
                                  ),
                                  SizedBox(width: 10),
                                  Text('无')
                                ],
                              )),
                          RadioListTile(
                            value: 1,
                            groupValue: 1,
                            onChanged: (value) {},
                            title: const Row(
                              children: [
                                Icon(
                                  Icons.wallet,
                                  color: Colors.blue,
                                ),
                                SizedBox(width: 10),
                                Text('Calicy 钱包')
                              ],
                            ),
                          ),
                          const Text(
                            '钱包应用可以存储信用卡和会员卡、车钥匙和其它内容，帮助您完成各种形式的交易。',
                            style: TextStyle(color: Colors.grey, fontSize: 14),
                          )
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
                  );
                },
              );
            },
          ),
          buildListTile(
            title: '卡片读取提醒',
            subtitle: '全部卡片',
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog.adaptive(
                    title: const Text('卡片读取提醒'),
                    content: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RadioListTile(
                            value: 0,
                            groupValue: 0,
                            onChanged: (value) {},
                            title: const Text('全部卡片'),
                            subtitle: const Text('付款卡、门卡钥匙、家庭场景类卡片等'),
                          ),
                          RadioListTile(
                            value: 1,
                            groupValue: 0,
                            onChanged: (value) {},
                            title: const Text('仅系统可识别卡片'),
                            subtitle: const Text('蓝牙配对、无线网络连接、家庭场景类卡片等'),
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
                  );
                },
              );
            },
          ),
          buildListTile(
            title: '必须解锁设备',
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
          const Divider(
            height: 1,
          ),
          buildListTile(
            title: '修复近场通信',
            onTap: () {},
          ),
          const ListTile(
            leading: Icon(Icons.info_outline),
          ),
          const ListTile(
            title: Text(
              '若要进行刷公交卡、Calicy 钱包、门卡、车钥匙等操作，可将手机背部触碰其它设备近场通信感应区。',
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
          )
        ],
      ),
    );
  }
}
