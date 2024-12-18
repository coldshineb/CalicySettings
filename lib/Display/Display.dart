import 'package:flutter/material.dart';

import '../Components.dart';
import 'DarkTheme.dart';
import 'NightVision.dart';

class DisplayPage extends StatefulWidget {
  const DisplayPage({super.key});

  @override
  State<DisplayPage> createState() => _DisplayPageState();
}

class _DisplayPageState extends State<DisplayPage> with Components {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '显示和触控',
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
          buildListTile(
              title: '深色模式',
              subtitle: '在日出后自动关闭',
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
              ),
              onTap: () {
                Navigator.push(
                    context, calicyPageRoute(DisplayDarkThemePage()));
              }),
          buildListTile(title: '亮度', subtitle: '调整亮度、自动亮度、阳光屏', onTap: () {}),
          buildListTile(
              title: '自动旋转屏幕',
              subtitle: '已关闭',
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const VerticalDivider(
                    thickness: 1,
                  ),
                  Switch(
                    value: false,
                    onChanged: (value) {
                      setState(() {
                        value = value;
                      });
                    },
                  ),
                ],
              ),
              onTap: () {}),
          const Divider(
            height: 1,
          ),
          const ListTile(
            title: Text(
              '屏幕',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ),
          buildListTile(
              title: '夜间模式',
              subtitle: '在日出后自动关闭',
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
              ),
              onTap: () {
                Navigator.push(
                    context, calicyPageRoute(DisplayNightVisionPage()));
              }),
          buildListTile(
              title: '灰度模式',
              subtitle: '将屏幕调成黑白色',
              trailing: Switch(
                value: false,
                onChanged: (value) {
                  setState(() {
                    value = value;
                  });
                },
              ),
              onTap: () {}),
          buildListTile(title: '色彩风格', subtitle: '色彩、真彩显示、色温', onTap: () {}),
          buildListTile(title: '屏幕刷新率', subtitle: '自适应', onTap: () {}),
          buildListTile(title: '屏幕分辨率', subtitle: 'WQHD+', onTap: () {}),
          buildListTile(
              title: '画质增强', subtitle: '超分辨率增强、视频画质增强、动态画面补偿', onTap: () {}),
          const Divider(
            height: 1,
          ),
          const ListTile(
            title: Text(
              '触控',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ),
          buildListTile(
              title: '自适应触控',
              subtitle: '触摸灵敏度将自动调整以适应您的环境、活动和屏幕保护膜',
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
              title: '屏幕保护膜模式',
              subtitle: '在使用屏幕保护膜时提升触控灵敏度和改进触控效果',
              trailing: Switch(
                value: false,
                onChanged: (value) {
                  setState(() {
                    value = value;
                  });
                },
              ),
              onTap: () {}),
        ],
      ),
    );
  }
}
