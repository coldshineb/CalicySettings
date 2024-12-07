import 'package:flutter/material.dart';

import '../Components.dart';
import 'DND.dart';

class SoundPage extends StatefulWidget {
  const SoundPage({super.key});

  @override
  State<SoundPage> createState() => _SoundPageState();
}

class _SoundPageState extends State<SoundPage> with Components {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '提示音和振动',
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
              '音量调节',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.transparent,
              child: Icon(Icons.music_note_outlined, color: Colors.grey[500]),
            ),
            title: Text('媒体', maxLines: 1, overflow: TextOverflow.ellipsis),
            subtitle:
                Slider(value: 50, min: 0, max: 100, onChanged: (value) {}),
            onTap: () {},
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.transparent,
              child: Icon(Icons.call_outlined, color: Colors.grey[500]),
            ),
            title: Text('通话', maxLines: 1, overflow: TextOverflow.ellipsis),
            subtitle:
                Slider(value: 50, min: 0, max: 100, onChanged: (value) {}),
            onTap: () {},
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.transparent,
              child: Icon(Icons.ring_volume_outlined, color: Colors.grey[500]),
            ),
            title: Text('铃声', maxLines: 1, overflow: TextOverflow.ellipsis),
            subtitle:
                Slider(value: 70, min: 0, max: 100, onChanged: (value) {}),
            onTap: () {},
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.transparent,
              child:
                  Icon(Icons.notifications_outlined, color: Colors.grey[500]),
            ),
            title: Text('通知', maxLines: 1, overflow: TextOverflow.ellipsis),
            subtitle:
                Slider(value: 30, min: 0, max: 100, onChanged: (value) {}),
            onTap: () {},
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.transparent,
              child: Icon(Icons.alarm_outlined, color: Colors.grey[500]),
            ),
            title: Text('闹钟', maxLines: 1, overflow: TextOverflow.ellipsis),
            subtitle:
                Slider(value: 50, min: 0, max: 100, onChanged: (value) {}),
            onTap: () {},
          ),
          const Divider(
            height: 1,
          ),
          const ListTile(
            title: Text(
              '声音模式',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ),
          buildListTile(
            title: '静音模式',
            trailing: Switch(
              value: false,
              onChanged: (value) {},
            ),
            onTap: () {},
          ),
          buildListTile(
            title: '静音时不发出媒体声音',
            trailing: Switch(
              value: true,
              onChanged: (value) {},
            ),
            onTap: () {},
          ),
          buildListTile(
            title: '勿扰模式',
            subtitle: '已关闭',
            onTap: () {
              Navigator.push(context, calicyPageRoute(SoundDNDPage()));
            },
          ),
          Divider(
            height: 1,
          ),
          const ListTile(
            title: Text(
              '提示音',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ),
          buildListTile(
            title: '电话铃声',
            subtitle: 'New Calicy Beginning',
            onTap: () {},
          ),
          buildListTile(
            title: '通知提示音',
            subtitle: 'Calicy Background',
            onTap: () {},
          ),
          buildListTile(
            title: '闹钟提示音',
            subtitle: 'Morning Calicy',
            onTap: () {},
          ),
          buildListTile(
              title: '更多提示音设置',
              subtitle: '拨号键盘、屏幕锁定、充电、点按和点击提示音',
              onTap: () {}),
          Divider(
            height: 1,
          ),
          const ListTile(
            title: Text(
              '振动',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ),
          buildListTile(
            title: '响铃时振动',
            trailing: Switch(
              value: true,
              onChanged: (value) {},
            ),
            onTap: () {},
          ),
          buildListTile(
            title: '静音时振动',
            trailing: Switch(
              value: false,
              onChanged: (value) {},
            ),
            onTap: () {},
          ),
          buildListTile(
            title: '更多振动设置',
            subtitle: '振动强度、先振动再响铃、自适应振动',
            onTap: () {},
          ),
          Divider(
            height: 1,
          ),
          const ListTile(
            title: Text(
              '触感',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ),
          buildListTile(
            title: '触感反馈',
            trailing: Switch(
              value: true,
              onChanged: (value) {},
            ),
            onTap: () {},
          ),
          buildPopupMenuButton(
            '触感强度',
            '强劲',
            [
              CheckedPopupMenuItem(
                value: 1,
                child: Text('轻微'),
              ),
              CheckedPopupMenuItem(
                value: 2,
                child: Text('中等'),
              ),
              CheckedPopupMenuItem(
                value: 3,
                checked: true,
                child: Text('强劲'),
              ),
            ],
          ),
          Divider(
            height: 1,
          ),
          const ListTile(
            title: Text(
              '声音辅助',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ),
          buildListTile(
            title: '实时字幕',
            subtitle: '自动为语音内容生成字幕',
            onTap: () {},
          ),
          buildListTile(
            title: '空间音频',
            subtitle: '播放兼容的媒体内容时，音频更具沉浸感',
            onTap: () {},
          ),
          buildListTile(
            title: '闻曲识音',
            subtitle: '识别附近正在播放的歌曲',
            onTap: () {},
          ),
          buildListTile(
            title: '清晰通话',
            subtitle: '在通话期间降低背景噪声',
            onTap: () {},
          ),
          buildListTile(
            title: '音质音效',
            subtitle: '杜比全景声、图形均衡器、耳机线控设置与校准',
            onTap: () {},
          ),
          Divider(
            height: 1,
          ),
          const ListTile(
            title: Text(
              '更多声音设置',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ),
          buildListTile(
            title: '允许调节各个应用音量',
            trailing: Switch(
              value: true,
              onChanged: (value) {},
            ),
            onTap: () {},
          ),
          buildListTile(
            title: '允许多声音同时发出',
            subtitle: '通知音出现时媒体音量保持不变，多个媒体音可同时发声',
            trailing: Switch(
              value: false,
              onChanged: (value) {},
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
