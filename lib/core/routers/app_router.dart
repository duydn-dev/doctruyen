import 'package:auto_route/auto_route.dart';
import 'package:doctruyen/features/home/presentation/home.dart';
import 'package:doctruyen/features/stories/presentation/stories.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: HomeRoute.page, initial: true),
    AutoRoute(page: StoriesRoute.page),
  ];
}
