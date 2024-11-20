import 'package:flutter/material.dart';

import '../Components.dart';

class DevicesQuickSharePage extends StatefulWidget {
  const DevicesQuickSharePage({super.key});

  @override
  State<DevicesQuickSharePage> createState() => _DevicesQuickSharePageState();
}

class _DevicesQuickSharePageState extends State<DevicesQuickSharePage>
    with Components {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            '快速分享',
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
            title: const Text("快速分享",
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
            title: '设备名称',
            subtitle: 'Calicy Demo',
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog.adaptive(
                    title: const Text('设备名称'),
                    content: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TextField(
                            controller:
                                TextEditingController(text: 'Calicy Demo'),
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
            title: '设备公开范围',
            subtitle: '所有人',
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog.adaptive(
                    title: const Text('设备公开范围'),
                    content: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          RadioListTile(
                              value: 0,
                              groupValue: 0,
                              onChanged: (value) {},
                              title: const Text('所有人')),
                          CheckboxListTile(
                              controlAffinity: ListTileControlAffinity.leading,
                              value: false,
                              onChanged: (value) {},
                              title: const Text('限时 10 分钟')),
                          RadioListTile(
                            value: 1,
                            groupValue: 0,
                            onChanged: (value) {},
                            title: const Text('联系人'),
                          ),
                          RadioListTile(
                            value: 2,
                            groupValue: 0,
                            onChanged: (value) {},
                            title: const Text('您的设备'),
                          ),
                          RadioListTile(
                            value: 3,
                            groupValue: 0,
                            onChanged: (value) {},
                            title: const Text('不公开'),
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
            title: '快速传输',
            subtitle: '暂时断开互联网连接以获得更快的传输速度',
            onTap: () {},
            trailing: Switch(
              value: false,
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
          const ListTile(
            leading: Icon(Icons.info_outline),
          ),
          const ListTile(
            title: Text(
              '"快速分享"会使用蓝牙扫描寻找附近的设备。',
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
          )
        ],
      ),
    );
  }
}
