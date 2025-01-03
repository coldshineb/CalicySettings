import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'About/About.dart';
import 'Accounts/Accounts.dart';
import 'Apps/Apps.dart';
import 'Battery/Battery.dart';
import 'Components.dart';
import 'Devices/Devices.dart';
import 'Display/Display.dart';
import 'Internet/Internet.dart';
import 'Launcher/Launcher.dart';
import 'Location/Location.dart';
import 'More/More.dart';
import 'Notification/Notification.dart';
import 'Personalization/Personalization.dart';
import 'Privacy/Privacy.dart';
import 'Security/Security.dart';
import 'Sound/Sound.dart';
import 'Storage/Storage.dart';
import 'System/System.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calicy 设置',
      theme: ThemeData(
          popupMenuTheme: PopupMenuThemeData(
            color: Colors.grey[100],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
          ),
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.blue,
            accentColor: Colors.blue,
            brightness: Brightness.light,
          ),
          dialogTheme: DialogTheme(
            backgroundColor: Colors.grey[100],
            shape: RoundedRectangleBorder(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              side: BorderSide(color: Colors.grey.shade300, width: 0.5),
            ),
          ),
          scaffoldBackgroundColor: Colors.white,
          fontFamily: 'Calicy',
          cardTheme: CardTheme(
            color: Colors.white,
            elevation: 1.0,
            shape: RoundedRectangleBorder(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              side: BorderSide(color: Colors.grey.shade300, width: 0.5),
            ),
          ),
          appBarTheme: const AppBarTheme(
            foregroundColor: Colors.blue,
            backgroundColor: Colors.white,
            elevation: 1.0,
            shadowColor: Colors.white,
          ),
          switchTheme: SwitchThemeData(
            thumbColor: WidgetStateProperty.resolveWith((states) {
              if (states.contains(WidgetState.selected)) {
                return Colors.blue;
              }
              return Colors.white;
            }),
            trackColor: WidgetStateProperty.resolveWith((states) {
              if (states.contains(WidgetState.selected)) {
                return Colors.blue.shade100;
              }
              return Colors.grey.shade300;
            }),
          ),
          iconTheme: IconThemeData(color: Colors.grey[500]),
          inputDecorationTheme: const InputDecorationTheme(
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blue),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
          ),
          useMaterial3: false),
      darkTheme: ThemeData(
          popupMenuTheme: PopupMenuThemeData(
            color: Colors.grey.shade900,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
          ),
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.blue,
            accentColor: Colors.blue,
            brightness: Brightness.dark,
          ),
          dialogTheme: DialogTheme(
            backgroundColor: Colors.grey[900],
            shape: RoundedRectangleBorder(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              side: BorderSide(color: Colors.grey.shade900, width: 0.5),
            ),
          ),
          brightness: Brightness.dark,
          scaffoldBackgroundColor: Colors.black,
          fontFamily: 'Calicy',
          cardTheme: CardTheme(
            color: Colors.grey[900],
            elevation: 1.0,
            shape: RoundedRectangleBorder(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              side: BorderSide(color: Colors.grey.shade900, width: 0.5),
            ),
          ),
          appBarTheme: const AppBarTheme(
            foregroundColor: Colors.blue,
            backgroundColor: Colors.black,
            elevation: 1.0,
            shadowColor: Colors.white,
          ),
          switchTheme: SwitchThemeData(
            thumbColor: WidgetStateProperty.resolveWith((states) {
              if (states.contains(WidgetState.selected)) {
                return Colors.blue;
              }
              return Colors.grey;
            }),
            trackColor: WidgetStateProperty.resolveWith((states) {
              if (states.contains(WidgetState.selected)) {
                return Colors.blue.shade100;
              }
              return Colors.grey.shade300;
            }),
          ),
          iconTheme: IconThemeData(color: Colors.grey[500]),
          inputDecorationTheme: const InputDecorationTheme(
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blue),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
          ),
          useMaterial3: false),
      themeMode: ThemeMode.system,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with Components {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: ListView(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                  child: Card(
                    child: InkWell(
                      borderRadius: BorderRadius.circular(10),
                      onTap: () {},
                      child: const ListTile(
                        title: Text(
                          '搜索设置项',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.grey),
                        ),
                        leading: Icon(Icons.search, color: Colors.blue),
                        trailing: Icon(Icons.account_circle_outlined,
                            color: Colors.blue),
                      ),
                    ),
                  ),
                ),
                buildMainListTile(
                  Colors.blue.shade100,
                  Colors.blue,
                  Icons.wifi,
                  '网络和互联网',
                  '无线局域网、移动网络、数据使用量和热点',
                  () {
                    Navigator.push(
                        context, calicyPageRoute(const InternetPage()));
                  },
                ),
                buildMainListTile(
                  Colors.green.shade100,
                  Colors.green,
                  Icons.devices,
                  '连接的设备',
                  '蓝牙、打印机、近场通信和设备连接',
                  () {
                    Navigator.push(
                        context, calicyPageRoute(const DevicePage()));
                  },
                ),
                buildMainListTile(
                  Colors.orange.shade100,
                  Colors.orange,
                  Icons.apps,
                  '应用',
                  '助理、最近使用的应用、默认应用',
                  () {
                    Navigator.push(context, calicyPageRoute(const AppsPage()));
                  },
                ),
                buildMainListTile(
                  Colors.red.shade100,
                  Colors.red,
                  Icons.notifications_outlined,
                  '通知',
                  '历史通知、对话泡',
                  () {
                    Navigator.push(
                        context, calicyPageRoute(const NotificationPage()));
                  },
                ),
                buildMainListTile(
                  Colors.cyan.shade100,
                  Colors.cyan,
                  Icons.battery_full,
                  '电池',
                  '省电模式、电池使用情况',
                  () {
                    Navigator.push(
                        context, calicyPageRoute(const BatteryPage()));
                  },
                ),
                buildMainListTile(
                  Colors.purple.shade100,
                  Colors.purple,
                  Icons.home,
                  '主屏幕',
                  '桌面行为、布局、概览、资讯一览',
                  () {
                    Navigator.push(
                        context, calicyPageRoute(const LauncherPage()));
                  },
                ),
                buildMainListTile(
                  Colors.green.shade100,
                  Colors.green,
                  Icons.draw_outlined,
                  '个性化',
                  '图标、壁纸、主题、字体',
                  () {
                    Navigator.push(
                        context, calicyPageRoute(const PersonalizationPage()));
                  },
                ),
                buildMainListTile(
                  Colors.orange.shade100,
                  Colors.orange[600]!,
                  Icons.brightness_6_outlined,
                  '显示和触控',
                  '亮度、深色主题、自动旋转、字体大小',
                  () {
                    Navigator.push(
                        context, calicyPageRoute(const DisplayPage()));
                  },
                ),
                buildMainListTile(
                  Colors.green.shade100,
                  Colors.green[300]!,
                  Icons.volume_up_outlined,
                  '提示音和振动',
                  '音量、触感反馈、勿扰',
                  () {
                    Navigator.push(context, calicyPageRoute(const SoundPage()));
                  },
                ),
                buildMainListTile(
                  Colors.purple.shade100,
                  Colors.purple,
                  Icons.storage,
                  '存储空间',
                  '已使用 10% - 还剩 921 GB',
                  () {
                    Navigator.push(
                        context, calicyPageRoute(const StoragePage()));
                  },
                ),
                buildMainListTile(
                  Colors.blue.shade100,
                  Colors.blue[300]!,
                  Icons.remove_red_eye_outlined,
                  '隐私',
                  '权限、个人信息',
                  () {
                    Navigator.push(
                        context, calicyPageRoute(const PrivacyPage()));
                  },
                ),
                buildMainListTile(
                  Colors.cyan.shade100,
                  Colors.cyan,
                  Icons.location_on_outlined,
                  '位置信息',
                  '已关闭',
                  () {
                    Navigator.push(
                        context, calicyPageRoute(const LocationPage()));
                  },
                ),
                buildMainListTile(
                  Colors.green.shade100,
                  Colors.green,
                  Icons.lock_outline,
                  '安全',
                  '屏幕锁定、人身安全、加密和设备管理',
                  () {
                    Navigator.push(
                        context, calicyPageRoute(const SecurityPage()));
                  },
                ),
                buildMainListTile(
                  Colors.yellow.shade100,
                  Colors.yellow[600]!,
                  Icons.account_circle_outlined,
                  '账号',
                  'Calicy 账号',
                  () {
                    Navigator.push(
                        context, calicyPageRoute(const AccountsPage()));
                  },
                ),
                buildMainListTile(
                  Colors.orange.shade100,
                  Colors.orange[600]!,
                  Icons.accessibility,
                  '无障碍',
                  '显示、互动、音频',
                  () {
                    showAdaptiveDialog(
                        context: context,
                        builder: (context) {
                          return const AlertDialog(
                            title: Text('无障碍'),
                            content: Text('显示、互动、音频'),
                          );
                        });
                  },
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.green.shade100,
                    child: SvgPicture.asset(
                      'assets/svg/digital-wellbeing-svgrepo-com.svg',
                      color: Colors.green[600]!,
                      height: 30,
                    ),
                  ),
                  title: Text(
                    '数字健康和家长控制',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  subtitle: Text(
                    '屏幕使用时间、应用定时器、睡眠时间表',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(color: Colors.grey),
                  ),
                  onTap: () {
                    showAdaptiveDialog(
                        context: context,
                        builder: (context) {
                          return const AlertDialog(
                            title: Text('数字健康和家长控制'),
                            content: Text('屏幕使用时间、应用定时器、睡眠时间表'),
                          );
                        });
                  },
                ),
                buildMainListTile(
                  Colors.grey.shade100,
                  Colors.grey,
                  Icons.more_horiz_outlined,
                  '更多设置',
                  '辅助功能',
                      () {
                    Navigator.push(
                        context, calicyPageRoute(const MorePage()));
                  },
                ),
                buildMainListTile(
                  Colors.grey.shade100,
                  Colors.grey,
                  Icons.info_outline,
                  '系统',
                  '语言、手势、时间、备份',
                  () {
                    Navigator.push(
                        context, calicyPageRoute(const SystemPage()));
                  },
                ),
                buildMainListTile(
                  Colors.blue.shade100,
                  Colors.blue,
                  Icons.perm_device_info_outlined,
                  '关于本机',
                  '型号、Calicy 版本和状态',
                  () {
                    Navigator.push(context, calicyPageRoute(const AboutPage()));
                  },
                ),
                buildMainListTile(
                  Colors.blue.shade100,
                  Colors.blue,
                  Icons.help_outline,
                  '提示和支持',
                  '帮助中心文章、电话与聊天支持',
                  () {
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  ListTile buildMainListTile(Color backgroundColor, Color iconColor,
      IconData icon, String title, String subtitle, VoidCallback onTap) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: backgroundColor,
        child: Icon(icon, color: iconColor),
      ),
      title: Text(
        title,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: Text(
        subtitle,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(color: Colors.grey),
      ),
      onTap: onTap,
    );
  }
}
