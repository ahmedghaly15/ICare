import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'custom_drawer_item.freezed.dart';

@freezed
class CustomDrawerItem with _$CustomDrawerItem {
  const factory CustomDrawerItem({
    required String title,
    required IconData icon,
    required VoidCallback onPressed,
  }) = _CustomDrawerItem;
}
