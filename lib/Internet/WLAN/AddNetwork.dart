import 'package:flutter/material.dart';

import '../../Components.dart';

class WLANAddNetworkPage extends StatefulWidget {
  const WLANAddNetworkPage({super.key});

  @override
  State<WLANAddNetworkPage> createState() => _WLANAddNetworkPageState();
}

class _WLANAddNetworkPageState extends State<WLANAddNetworkPage>
    with Components {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '添加网络',
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
            message: '保存',
            child: IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {},
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 10,
          ),
          ListTile(
            title: const TextField(
              decoration: InputDecoration(
                labelText: '网络名称',
                hintText: '输入 SSID',
                floatingLabelBehavior: FloatingLabelBehavior.always,
              ),
            ),
            trailing: IconButton(
              icon: const Icon(Icons.qr_code),
              onPressed: () {},
            ),
          ),
          ListTile(
            title: DropdownButtonFormField<String>(
              value: '无',
              borderRadius: BorderRadius.circular(10),
              decoration: const InputDecoration(
                labelText: '安全性',
                floatingLabelBehavior: FloatingLabelBehavior.always,
              ),
              items: <String>[
                '无',
                'Enhanced Open',
                'WEP',
                'WPA/WPA2-个人',
                'WPA3-个人',
                'WPA/WPA2-企业',
                'WPA3-企业',
                'WPA3-企业 192 位',
              ].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {},
            ),
          ),
          ListTile(
            title: DropdownButtonFormField<String>(
              value: '否',
              borderRadius: BorderRadius.circular(10),
              decoration: const InputDecoration(
                labelText: '隐藏的网络',
                floatingLabelBehavior: FloatingLabelBehavior.always,
              ),
              items: <String>['是', '否'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {},
            ),
          ),
          ListTile(
            title: DropdownButtonFormField<String>(
              value: '自动检测',
              borderRadius: BorderRadius.circular(10),
              decoration: const InputDecoration(
                labelText: '按流量计费',
                floatingLabelBehavior: FloatingLabelBehavior.always,
              ),
              items:
                  <String>['自动检测', '视为按流量计费', '视为不按流量计费'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {},
            ),
          ),
          ListTile(
            title: DropdownButtonFormField<String>(
              value: '无',
              borderRadius: BorderRadius.circular(10),
              decoration: const InputDecoration(
                labelText: '代理',
                floatingLabelBehavior: FloatingLabelBehavior.always,
              ),
              items: <String>['无', '手动', 'PAC'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {},
            ),
          ),
          ListTile(
            title: DropdownButtonFormField<String>(
              value: 'DHCP',
              borderRadius: BorderRadius.circular(10),
              decoration: const InputDecoration(
                labelText: 'IP 设置',
                floatingLabelBehavior: FloatingLabelBehavior.always,
              ),
              items: <String>['DHCP', '静态'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {},
            ),
          ),
          ListTile(
            title: DropdownButtonFormField<String>(
              value: '使用随机分配的 MAC',
              borderRadius: BorderRadius.circular(10),
              decoration: const InputDecoration(
                labelText: '隐私',
                floatingLabelBehavior: FloatingLabelBehavior.always,
              ),
              items: <String>['使用随机分配的 MAC', '使用设备 MAC'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {},
            ),
          ),
        ],
      ),
    );
  }
}
