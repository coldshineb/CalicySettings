import 'package:flutter/material.dart';

import '../Components.dart';

class StoragePage extends StatefulWidget {
  const StoragePage({super.key});

  @override
  State<StoragePage> createState() => _StoragePageState();
}

class _StoragePageState extends State<StoragePage> with Components {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '存储空间',
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
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  '已使用 102 GB / 剩余 921 GB',
                  style: TextStyle(color: Colors.blue),
                ),
                const SizedBox(height: 8),
                LinearProgressIndicator(
                  value: 0.5,
                  minHeight: 10,
                  valueColor: const AlwaysStoppedAnimation<Color>(Colors.blue),
                  borderRadius: BorderRadius.circular(10),
                ),
                const SizedBox(height: 8),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(''),
                    Text('共 1 TB'),
                  ],
                ),
              ],
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.transparent,
              child: Icon(Icons.apps_outlined, color: Colors.grey[500]),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('应用'),
                Text('73 GB', style: TextStyle(color: Colors.grey)),
              ],
            ),
            subtitle: LinearProgressIndicator(
              borderRadius: BorderRadius.circular(10),
              value: 73 / 1024,
              valueColor: const AlwaysStoppedAnimation<Color>(Colors.blue),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.transparent,
              child: Icon(Icons.gamepad_outlined, color: Colors.grey[500]),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('游戏'),
                Text('15 GB', style: TextStyle(color: Colors.grey)),
              ],
            ),
            subtitle: LinearProgressIndicator(
              borderRadius: BorderRadius.circular(10),
              value: 15 / 1024,
              valueColor: const AlwaysStoppedAnimation<Color>(Colors.blue),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.transparent,
              child: Icon(Icons.folder_outlined, color: Colors.grey[500]),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('其它'),
                Text('1 GB', style: TextStyle(color: Colors.grey)),
              ],
            ),
            subtitle: LinearProgressIndicator(
              borderRadius: BorderRadius.circular(10),
              value: 1 / 1024,
              valueColor: const AlwaysStoppedAnimation<Color>(Colors.blue),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.transparent,
              child: Icon(Icons.image_outlined, color: Colors.grey[500]),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('图片'),
                Text('1 GB', style: TextStyle(color: Colors.grey)),
              ],
            ),
            subtitle: LinearProgressIndicator(
              borderRadius: BorderRadius.circular(10),
              value: 1 / 1024,
              valueColor: const AlwaysStoppedAnimation<Color>(Colors.blue),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.transparent,
              child: Icon(Icons.movie_creation_outlined,
                  color: Colors.grey[500]),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('视频'),
                Text('1 GB', style: TextStyle(color: Colors.grey)),
              ],
            ),
            subtitle: LinearProgressIndicator(
              borderRadius: BorderRadius.circular(10),
              value: 1 / 1024,
              valueColor: const AlwaysStoppedAnimation<Color>(Colors.blue),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.transparent,
              child: Icon(Icons.music_note_outlined, color: Colors.grey[500]),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('音频'),
                Text('172 MB', style: TextStyle(color: Colors.grey)),
              ],
            ),
            subtitle: LinearProgressIndicator(
              borderRadius: BorderRadius.circular(10),
              value: 172 / 1024 / 1024,
              valueColor: const AlwaysStoppedAnimation<Color>(Colors.blue),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.transparent,
              child: Icon(Icons.folder_outlined,
                  color: Colors.grey[500]),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('文档'),
                Text('0 B', style: TextStyle(color: Colors.grey)),
              ],
            ),
            subtitle: LinearProgressIndicator(
              borderRadius: BorderRadius.circular(10),
              value: 0 / 1024,
              valueColor: const AlwaysStoppedAnimation<Color>(Colors.blue),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.transparent,
              child: Icon(Icons.delete_outlined, color: Colors.grey[500]),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('回收站'),
                Text('519 MB', style: TextStyle(color: Colors.grey)),
              ],
            ),
            subtitle: LinearProgressIndicator(
              borderRadius: BorderRadius.circular(10),
              value: 519 / 1024 / 1024,
              valueColor: const AlwaysStoppedAnimation<Color>(Colors.blue),
            ),
            onTap: () {},
          ),
          Divider(
            height: 1,
          ),
          const ListTile(
            title: Text(
              '系统',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.transparent,
              child: Icon(Icons.system_security_update_good_outlined, color: Colors.grey[500]),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Calicy'),
                Text('10 GB', style: TextStyle(color: Colors.grey)),
              ],
            ),
            subtitle: LinearProgressIndicator(
              borderRadius: BorderRadius.circular(10),
              value: 10 / 1024,
              valueColor: const AlwaysStoppedAnimation<Color>(Colors.blue),
            ),
            onTap: () {
              showDialog(context: context, builder:
                  (BuildContext context) {
                return AlertDialog.adaptive(
                  content: const Text('这包括操作系统和使手机保持顺畅运行所需的文件。为了保护这些文件的完整性，您无法访问这些文件。'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('确定'),
                    ),
                  ],
                  buttonPadding: const EdgeInsets.all(16),
                );
              });
            },
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.transparent,
              child: Icon(Icons.cached_outlined, color: Colors.grey[500]),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('临时文件'),
                Text('0 B', style: TextStyle(color: Colors.grey)),
              ],
            ),
            subtitle: LinearProgressIndicator(
              borderRadius: BorderRadius.circular(10),
              value: 0 / 1024,
              valueColor: const AlwaysStoppedAnimation<Color>(Colors.blue),
            ),
            onTap: () {
              showDialog(context: context, builder:
                  (BuildContext context) {
                return AlertDialog.adaptive(
                  content: const Text('这包括缓存和操作系统所需的其他临时文件。您可能会注意到存储空间用量会随时间推移而发生变化。'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('确定'),
                    ),
                  ],
                  buttonPadding: const EdgeInsets.all(16),
                );
              });
            },
          ),
          Divider(
            height: 1,
          ),
          const ListTile(
            title: Text(
              '存储优化',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ),
          buildListTile(
            title: '清理缓存',
            onTap: () {},
          ),
          buildListTile(
            title: '深度清理',
            onTap: () {},
          ),
          buildListTile(
            title: '碎片整理',
            onTap: () {},
          ),
          buildListTile(
            title: '内存扩展',
            subtitle: '为系统提供额外的运行内存，6 GB',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
