import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.title,
    required this.icon,
    this.onTap,
    this.trailing,
  });

  final String title;
  final IconData icon;
  final Widget? trailing;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      leading: Icon(icon),
      trailing: trailing,
      onTap: onTap,
    );
  }
}
