// lib/main.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'app.dart';

void main() {
  // Có thể thêm error handling
  runApp(const ProviderScope(child: DocTruyenApp()));
}
