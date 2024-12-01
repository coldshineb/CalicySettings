import 'package:flutter/material.dart';

import '../Components.dart';

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
              onTap: () {}),
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
              onTap: () {}),
          buildListTile(
              title: '灰度模式',
              subtitle: '在起床时间表后关闭',
              trailing: Switch(
                value: true,
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
