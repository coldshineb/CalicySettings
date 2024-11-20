import 'package:flutter/material.dart';

import '../Components.dart';

class DevicesAllDevicesPage extends StatefulWidget {
  const DevicesAllDevicesPage({super.key});

  @override
  State<DevicesAllDevicesPage> createState() => _DevicesAllDevicesPageState();
}

class _DevicesAllDevicesPageState extends State<DevicesAllDevicesPage>
    with Components {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            '保存的设备',
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
            icon: Icons.tv,
            title: 'Calicy TV Gen 3',
            onTap: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog.adaptive(
                      title: const Text('删除设备'),
                      content: const Text('要删除此设备吗？'),
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
                          child: const Text('删除'),
                        ),
                      ],
                    );
                  });
            },
          ),
          buildListTile(
            icon: Icons.tablet,
            title: 'Calicy Tablet',
            onTap: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog.adaptive(
                      title: const Text('删除设备'),
                      content: const Text('要删除此设备吗？'),
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
                          child: const Text('删除'),
                        ),
                      ],
                    );
                  });
            },
          ),
          buildListTile(
            icon: Icons.laptop,
            title: 'CalicyBook 14\'',
            onTap: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog.adaptive(
                      title: const Text('删除设备'),
                      content: const Text('要删除此设备吗？'),
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
                          child: const Text('删除'),
                        ),
                      ],
                    );
                  });
            },
          ),
        ],
      ),
    );
  }
}
