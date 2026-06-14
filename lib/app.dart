// lib/app.dart
import 'package:doctruyen/core/routers/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DocTruyenApp extends ConsumerStatefulWidget {
  const DocTruyenApp({super.key});

  @override
  ConsumerState<DocTruyenApp> createState() => _DocTruyenAppState();
}

class _DocTruyenAppState extends ConsumerState<DocTruyenApp> {
  // Khởi tạo router một lần duy nhất
  late final AppRouter _appRouter = AppRouter();

  // Theme có thể dùng provider
  ThemeData? _themeData;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme:
          _themeData ??
          ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
      routerConfig: _appRouter.config(
        // Tùy chọn: deep linking
        // deepLinkBuilder: (deepLink) => ...,

        // Tùy chọn: navigation observer
        // navigatorObservers: () => [MyObserver()],
      ),
      // builder: (context, child) {
      //   return SafeArea(child: child ?? const SizedBox.shrink());
      // },
    );
  }
}
