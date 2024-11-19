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
}
