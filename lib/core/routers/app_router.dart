import 'package:auto_route/auto_route.dart';
import 'package:doctruyen/core/layouts/main_layout.dart';
import 'package:doctruyen/features/home/presentation/home.dart';
import 'package:doctruyen/features/search/presentation/search.dart';
import 'package:doctruyen/features/settings/presentation/settings.dart';
import 'package:doctruyen/features/stories/presentation/stories.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();
  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      page: MainLayoutRoute.page, 
      initial: true,
      children: [
        AutoRoute(page: HomeRoute.page),
        AutoRoute(page: SearchRoute.page),
        AutoRoute(page: StoriesRoute.page),
        AutoRoute(page: SettingsRoute.page),
      ],
    ),
  ];
}
