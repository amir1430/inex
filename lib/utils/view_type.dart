import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(valueField: 'name')
enum ViewType {
  grid(icon: Icons.grid_view_outlined, name: 'grid'),
  list(icon: Icons.list, name: 'list');

  const ViewType({required this.icon, required this.name});
  final IconData icon;
  final String name;
}
