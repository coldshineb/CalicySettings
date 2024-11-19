import 'package:flutter/material.dart';

import '../../Components.dart';

class SIMSIMInfoPage extends StatefulWidget {
  const SIMSIMInfoPage({super.key});

  @override
  State<SIMSIMInfoPage> createState() => _SIMSIMInfoPageState();
}

class _SIMSIMInfoPageState extends State<SIMSIMInfoPage> with Components {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Calicy 移动',
          style: TextStyle(fontSize: 18),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          Tooltip(
            message: 'SIM 卡标签和颜色',
            child: IconButton(
              icon: const Icon(Icons.edit_outlined),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog.adaptive(
                      title: const Text('SIM 卡标签和颜色'),
                      content: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextField(
                              decoration: const InputDecoration(
                                labelText: '名称',
                              ),
                              controller:
                                  TextEditingController(text: 'Calicy 移动'),
                            ),
                            const SizedBox(height: 10),
                            DropdownButtonFormField<String>(
                              borderRadius: BorderRadius.circular(10),
                              decoration: const InputDecoration(
                                labelText: '颜色（由兼容应用使用）',
                              ),
                              items: <String>['红色', '绿色', '蓝色', '黄色', '紫色']
                                  .map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {},
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
                          child: const Text('保存'),
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          ListTile(
            tileColor: Colors.blue,
            leading: const Icon(null),
            title: const Text("使用此 SIM 卡",
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
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  '已使用 1.00GB',
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
                    Text('1.00GB'),
                    Text('2.00GB'),
                  ],
                ),
              ],
            ),
          ),
          buildListTile(
            title: '手机号码',
            subtitle: '未知',
            onTap: () {},
          ),
          const Divider(height: 1),
          const ListTile(
            title: Text(
              '漫游设置',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ),
          buildListTile(
            title: '漫游',
            subtitle: '漫游时连接到移动数据网络服务',
            onTap: () {},
            trailing: Switch(
              value: false,
              onChanged: (value) {},
            ),
          ),
          buildListTile(
            title: '漫游联网限制',
            subtitle: '禁止任何应用联网',
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog.adaptive(
                    title: const Text('选择漫游时允许的数据网络'),
                    content: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RadioListTile<int>(
                            title: const Text('全部应用可联网'),
                            value: 0,
                            groupValue: 2,
                            onChanged: (value) {},
                          ),
                          RadioListTile<int>(
                            title: const Text('仅白名单应用可联网'),
                            value: 1,
                            groupValue: 2,
                            onChanged: (value) {},
                          ),
                          RadioListTile<int>(
                            title: const Text('禁止任何应用联网'),
                            value: 2,
                            groupValue: 2,
                            onChanged: (value) {},
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
          const Divider(height: 1),
          const ListTile(
            title: Text(
              '数据流量控制',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ),
          buildListTile(
            title: '应用的流量使用情况',
            subtitle: '11月16日至12月15日期间已使用 1.00 GB',
            onTap: () {},
          ),
          buildListTile(
            title: '数据流量警告和上限',
            onTap: () {},
          ),
          const Divider(height: 1),
          const ListTile(
            title: Text(
              '网络设置',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ),
          buildListTile(
            title: '彩信',
            subtitle: '关闭移动数据时仍可收发彩信',
            onTap: () {},
            trailing: Switch(
              value: false,
              onChanged: (value) {},
            ),
          ),
          buildListTile(
            title: '首选网络类型',
            subtitle: '5G（推荐）',
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog.adaptive(
                    title: const Text('首选网络类型'),
                    content: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RadioListTile<int>(
                            title: const Text('3G'),
                            value: 1,
                            groupValue: 3,
                            onChanged: (value) {},
                          ),
                          RadioListTile<int>(
                            title: const Text('4G'),
                            value: 2,
                            groupValue: 3,
                            onChanged: (value) {},
                          ),
                          RadioListTile<int>(
                            title: const Text('5G（推荐）'),
                            value: 3,
                            groupValue: 3,
                            onChanged: (value) {},
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
                        child: const Text('保存'),
                      ),
                    ],
                  );
                },
              );
            },
          ),
          buildListTile(
            title: '运营商',
            subtitle: '自动选择，Calicy 移动',
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog.adaptive(
                    title: const Text('运营商'),
                    content: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RadioListTile<int>(
                            title: const Text('自动选择'),
                            value: 1,
                            groupValue: 1,
                            onChanged: (value) {},
                          ),
                          RadioListTile<int>(
                            title: const Text('手动选择'),
                            value: 2,
                            groupValue: 1,
                            onChanged: (value) {},
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
                        child: const Text('保存'),
                      ),
                    ],
                  );
                },
              );
            },
          ),
          buildListTile(title: '接入点名称', onTap: () {}),
          buildListTile(
              title: '高清通话',
              onTap: () {},
              trailing: Switch(value: true, onChanged: (value) {})),
          buildListTile(
              title: 'VoNR 高清通话',
              onTap: () {},
              trailing: Switch(value: true, onChanged: (value) {})),
          buildListTile(
              title: '启用 2G',
              subtitle: '2G 网络的安全性较低，但在某些地方可能会改善您的连接质量。您始终都能通过 2G 网络拨打紧急电话',
              onTap: () {},
              trailing: Switch(value: true, onChanged: (value) {})),
          const Divider(height: 1),
          const ListTile(
            title: Text(
              '无线局域网高清通话',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ),
          buildListTile(
              title: '无线局域网高清通话',
              subtitle: '当无线局域网通话可用时，将使用无线局域网接收或拨打电话',
              onTap: () {},
              trailing: Switch(value: true, onChanged: (value) {})),
          buildListTile(
              title: '连接偏好设定',
              subtitle: '无线局域网优先',
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog.adaptive(
                      title: const Text('连接偏好设定'),
                      content: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RadioListTile<int>(
                              title: const Text('移动数据网络优先'),
                              value: 1,
                              groupValue: 2,
                              onChanged: (value) {},
                            ),
                            RadioListTile<int>(
                              title: const Text('无线局域网优先'),
                              value: 2,
                              groupValue: 2,
                              onChanged: (value) {},
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
                          child: const Text('保存'),
                        ),
                      ],
                    );
                  },
                );
              }),
          const Divider(height: 1),
          const ListTile(
            title: Text(
              '其它信息',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ),
          buildListTile(
            title: '运营商设置版本',
            subtitle: 'default-60000000',
          ),
          buildListTile(
            title: 'IMEI',
            subtitle: '356789123456789',
          ),
          buildListTile(
            title: 'EID',
            subtitle: '89000000000000000000000000000000',
          ),
          Divider(height: 1),
          buildListTile(
            title: '清空 eSIM 卡',
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog.adaptive(
                    title: const Text('清空 eSIM 卡'),
                    content: const Text('清空 eSIM 卡将会删除所有与此 eSIM 相关的数据'),
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
                        child: const Text('移除'),
                      ),
                    ],
                  );
                },
              );
            },
          )
        ],
      ),
    );
  }
}
