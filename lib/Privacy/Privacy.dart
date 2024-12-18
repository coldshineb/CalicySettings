import 'package:flutter/material.dart';

import '../Components.dart';

class PrivacyPage extends StatefulWidget {
  const PrivacyPage({super.key});

  @override
  State<PrivacyPage> createState() => _PrivacyPageState();
}

class _PrivacyPageState extends State<PrivacyPage> with Components {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '隐私',
          style: TextStyle(fontSize: 18),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        children: [
          const ListTile(
            title: Text(
              '权限',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ),
          buildListTile(
              title: '权限控制器', subtitle: '控制应用对您数据的访问权限', onTap: () {}),
          buildListTile(
              title: '隐私信息中心', subtitle: '显示最近使用过权限的应用', onTap: () {}),
          const Divider(
            height: 1,
          ),
          const ListTile(
            title: Text(
              '控件',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ),
          buildListTile(
              title: '摄像头使用权限',
              subtitle: '针对应用和服务',
              trailing: Switch(
                value: true,
                onChanged: (value) {
                  setState(() {
                    value = value;
                  });
                },
              ),
              onTap: () {}),
          buildListTile(
              title: '麦克风使用权限',
              subtitle: '针对应用和服务。关闭此设置后，系统仍可能在您拨打紧急电话号码时分享麦克风数据',
              trailing: Switch(
                value: true,
                onChanged: (value) {
                  setState(() {
                    value = value;
                  });
                },
              ),
              onTap: () {}),
          buildListTile(
              title: '隐身模式',
              subtitle: '系统将拒绝所有应用录音、定位和拍照',
              trailing: Switch(
                value: false,
                onChanged: (value) {
                  setState(() {
                    value = value;
                  });
                },
              ),
              onTap: () {}),
          buildListTile(
              title: '显示剪贴板访问通知',
              subtitle: '系统会在应用访问您复制的文字、图片或其他内容时显示一条消息',
              trailing: Switch(
                value: true,
                onChanged: (value) {
                  setState(() {
                    value = value;
                  });
                },
              ),
              onTap: () {}),
          buildListTile(
              title: '显示密码',
              subtitle: '输入时短暂显示字符',
              trailing: Switch(
                value: true,
                onChanged: (value) {
                  setState(() {
                    value = value;
                  });
                },
              ),
              onTap: () {}),
          buildListTile(
              title: '在锁定屏幕上显示媒体',
              subtitle: '为了方便您快速恢复播放，媒体播放器会在锁定屏幕上保持开启状态',
              trailing: Switch(
                value: true,
                onChanged: (value) {
                  setState(() {
                    value = value;
                  });
                },
              ),
              onTap: () {}),
          buildListTile(
              title: '虚拟身份',
              subtitle: '系统将向应用提供虚拟身份 ID 代替您的设备唯一身份 ID，保护您的个人隐私信息及行为数据',
              onTap: () {}),
          const Divider(
            height: 1,
          ),
          const ListTile(
            title: Text(
              '高级设置',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ),
          buildListTile(
              title: '允许相机软件扩展程序',
              subtitle: '使用默认软件实现来提供高级相机功能,例如 HDR、夜间模式或其他相机扩展功能',
              trailing: Switch(
                value: true,
                onChanged: (value) {
                  setState(() {
                    value = value;
                  });
                },
              ),
              onTap: () {}),
          buildListTile(
              title: '使用应用数据提供个性化服务',
              subtitle: '允许应用将内容发送到 Calicy',
              trailing: Switch(
                value: true,
                onChanged: (value) {
                  setState(() {
                    value = value;
                  });
                },
              ),
              onTap: () {}),
          buildListTile(
              title: '使用情况和诊断信息', subtitle: '分享数据以帮助改进 Calicy', onTap: () {}),
          buildListTile(title: '手机分身', onTap: () {}),
        ],
      ),
    );
  }
}
