import 'package:flutter/material.dart';

mixin class Components {
  ListTile buildListTile({
    required String title,
    onTap,
    trailing,
    subtitle,
    icon,
  }) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.transparent,
        child: Icon(icon, color: Colors.grey[500]),
      ),
      title: Text(title, maxLines: 1, overflow: TextOverflow.ellipsis),
      subtitle: subtitle != null
          ? Text(
              subtitle,
              style: const TextStyle(color: Colors.grey),
            )
          : null,
      trailing: trailing,
      onTap: onTap,
    );
  }

  PopupMenuButton<int> buildPopupMenuButton(title, subtitle, items) {
    return PopupMenuButton(
      tooltip: '',
      itemBuilder: (context) => items,
      child: buildListTile(
        title: title,
        subtitle: subtitle,
      ),
    );
  }

  PageRoute calicyPageRoute(Widget page) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        // 定义从下到上的平移动画
        const begin = Offset(0.0, 0.05);
        const end = Offset(0.0, 0.0);
        const curve = Curves.easeInOut;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        var offsetAnimation = animation.drive(tween);

        // 定义淡入淡出的透明度动画
        var fadeAnimation = Tween<double>(begin: 0.0, end: 1.0)
            .chain(CurveTween(curve: curve))
            .animate(animation);

        return FadeTransition(
          opacity: fadeAnimation,
          child: SlideTransition(
            position: offsetAnimation,
            child: child,
          ),
        );
      },
    );
  }
}
