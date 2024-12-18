import 'package:flutter/material.dart';

import '../Components.dart';

class AccountsPage extends StatefulWidget {
  const AccountsPage({super.key});

  @override
  State<AccountsPage> createState() => _AccountsPageState();
}

class _AccountsPageState extends State<AccountsPage> with Components {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '账号',
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
              '账号',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ),
          buildListTile(
            title: '添加账号',
            icon: Icons.add,
            onTap: () {},
          ),
          Divider(
            height: 1,
          ),
          buildListTile(
            title: '自动同步数据',
            onTap: () {},
            trailing: Switch(
              value: true,
              onChanged: (value) {},
            ),
          ),
          buildListTile(
            title: '仅在无线局域网下同步',
            onTap: () {},
            trailing: Switch(
              value: false,
              onChanged: (value) {},
            ),
          ),
        ],
      ),
    );
  }
}
