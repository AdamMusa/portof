import 'package:flutter/material.dart';

class HeaderItem {
  final String title;
  final Icon? icon;
  final VoidCallback onTap;
  final bool isButton;

  HeaderItem({
    required this.title,
    this.icon,
    required this.onTap,
    this.isButton = false,
  });
}
