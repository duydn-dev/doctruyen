import 'package:auto_route/auto_route.dart';
import 'package:doctruyen/core/layouts/bottom_bar.dart';
import 'package:doctruyen/core/layouts/doctruyen_appbar.dart';
import 'package:doctruyen/core/routers/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class MainLayoutScreen extends ConsumerWidget {
  const MainLayoutScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabTitles = [
      'Trang chủ',
      'Tìm kiếm truyện',
      'Danh sách câu chuyện',
      'Cài đặt',
    ];

    return SafeArea(
      child: AutoTabsScaffold(
        routes: const [
          HomeRoute(),
          SearchRoute(),
          StoriesRoute(),
          SettingsRoute(),
        ],
        appBarBuilder: (context, tabsRouter) {
          return DocTruyenAppBar(title: tabTitles[tabsRouter.activeIndex]);
        },
        bottomNavigationBuilder: (_, tabsRouter) {
          return DocTruyenBottomBar(tabsRouter: tabsRouter);
        },
      ),
    );
  }
}