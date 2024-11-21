import 'package:flutter/material.dart';

import '../Components.dart';

class PersonalizationPage extends StatefulWidget {
  const PersonalizationPage({super.key});

  @override
  State<PersonalizationPage> createState() => _PersonalizationPageState();
}

class _PersonalizationPageState extends State<PersonalizationPage>
    with Components {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '个性化',
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
              '主屏幕',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ),
          buildListTile(
            icon: Icons.dashboard,
            title: '图标包',
            subtitle: '默认',
            onTap: () {},
          ),
          buildListTile(
            icon: Icons.wallpaper,
            title: '壁纸',
            onTap: () {},
          ),
          buildPopupMenuButton('图标大小', '默认', [
            const CheckedPopupMenuItem(
              value: 0,
              checked: true,
              child: Text('默认'),
            ),
            const CheckedPopupMenuItem(
              value: 1,
              child: Text('小'),
            ),
            const CheckedPopupMenuItem(
              value: 2,
              child: Text('大'),
            ),
          ]),
          buildPopupMenuButton('图标形状', '默认', [
            const CheckedPopupMenuItem(
              value: 0,
              checked: true,
              child: Text('默认'),
            ),
            const CheckedPopupMenuItem(
              value: 1,
              child: Text('圆形'),
            ),
            const CheckedPopupMenuItem(
              value: 2,
              child: Text('圆角矩形'),
            ),
          ]),
          buildListTile(
            title: '色彩对比度',
            subtitle: '默认',
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text('色彩对比度'),
                    content: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          RadioListTile(
                            value: 0,
                            groupValue: 0,
                            onChanged: (value) {},
                            title: const Text('默认'),
                          ),
                          RadioListTile(
                            value: 1,
                            groupValue: 0,
                            onChanged: (value) {},
                            title: const Text('中'),
                          ),
                          RadioListTile(
                            value: 2,
                            groupValue: 0,
                            onChanged: (value) {},
                            title: const Text('高'),
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
            title: '高对比度文字',
            subtitle: '将文字颜色更改为黑色或白色，使其与背景形成尽可能鲜明的对比',
            trailing: Switch(
              value: false,
              onChanged: (value) {},
            ),
            onTap: () {},
          ),
          const Divider(
            height: 1,
          ),
          const ListTile(
            title: Text(
              '锁定屏幕',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ),
          buildListTile(
            icon: Icons.aod_outlined,
            title: '息屏显示',
            onTap: () {},
          ),
          buildListTile(
            icon: Icons.shortcut,
            title: '快捷方式',
            subtitle: '相机、钱包',
            onTap: () {},
          ),
          Divider(
            height: 1,
          ),
          buildListTile(
            icon: Icons.format_size_outlined,
            title: '字体',
            onTap: () {},
          ),
          buildListTile(
            icon: Icons.fingerprint,
            title: '指纹样式',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
