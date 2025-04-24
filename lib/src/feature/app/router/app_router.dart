import 'package:auto_route/auto_route.dart';
import 'package:tredo/src/feature/app/model/user/user_dto.dart';
import 'package:tredo/src/feature/app/presentation/launcher.dart';
import 'package:flutter/material.dart';
import 'package:tredo/src/feature/auth/presentation/ui/signin_page.dart';
import 'package:tredo/src/feature/base/presentation/ui/base_page.dart';
import 'package:tredo/src/feature/chat/presentation/ui/chat_page.dart';

part 'app_router.gr.dart';

// navigator Key
final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType =>
      const RouteType.cupertino(); //.cupertino, .adaptive ..etc

  @override
  List<AutoRoute> get routes => [
        // AutoRoute(page: TempRoutes.page),
        AutoRoute(
          page: LauncherRoute.page,
          initial: true,
        ),

        AutoRoute(page: SignInRoute.page),
        AutoRoute(page: BaseRoute.page),
        AutoRoute(page: ChatRoute.page),
      ];
}

