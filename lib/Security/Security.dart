import 'package:flutter/material.dart';

import '../Components.dart';

class SecurityPage extends StatefulWidget {
  const SecurityPage({super.key});

  @override
  State<SecurityPage> createState() => _SecurityPageState();
}

class _SecurityPageState extends State<SecurityPage> with Components {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '安全',
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
              '设备安全',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ),
          buildListTile(
              title: '设备解锁',
              icon: Icons.lock_outline,
              subtitle: '屏幕锁定、指纹解锁和人脸解锁、延长解锁、盗窃防护',
              onTap: () {}),
          buildListTile(
              title: '查找设备',
              icon: Icons.find_in_page_outlined,
              subtitle: '查找我的设备、不明追踪器提醒',
              onTap: () {}),
          buildListTile(
              title: '关机验证密码',
              icon: Icons.password_outlined,
              subtitle: '锁屏状态下，关机时需要验证锁屏密码',
              onTap: () {}),
          buildListTile(
              title: 'SIM 卡保护', icon: Icons.sim_card_outlined, onTap: () {}),
          const Divider(
            height: 1,
          ),
          const ListTile(
            title: Text(
              '系统安全',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ),
          buildListTile(
              title: '骚扰拦截', icon: Icons.block_outlined, onTap: () {}),
          buildListTile(
              title: '系统更新', icon: Icons.system_update_outlined, onTap: () {}),
          Divider(
            height: 1,
          ),
          const ListTile(
            title: Text(
              '人身安全',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ),
          buildListTile(
              title: '预警中心',
              icon: Icons.warning_amber_outlined,
              subtitle: '地震预警、自然灾害预警、智能家居设备预警',
              onTap: () {}),
          buildListTile(
              title: '车祸检测', icon: Icons.car_crash_outlined, onTap: () {}),
          buildListTile(title: '紧急求助', icon: Icons.sos_outlined, onTap: () {}),
          buildListTile(
              title: '医疗急救卡',
              subtitle: '姓名、血型及其它信息',
              icon: Icons.medical_services_outlined,
              onTap: () {}),
          Divider(
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
          buildListTile(title: '固定应用', subtitle: '已关闭', onTap: () {}),
          buildListTile(title: '设备管理应用', onTap: () {}),
          buildListTile(title: '加密与凭据', subtitle: '已加密', onTap: () {}),
          buildListTile(title: '可信代理', onTap: () {}),
        ],
      ),
    );
  }
}
