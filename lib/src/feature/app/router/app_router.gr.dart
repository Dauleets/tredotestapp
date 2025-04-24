// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    BaseRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const BasePage(),
      );
    },
    ChatRoute.name: (routeData) {
      final args = routeData.argsAs<ChatRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ChatPage(
          key: args.key,
          me: args.me,
          companion: args.companion,
        ),
      );
    },
    LauncherRoute.name: (routeData) {
      final args = routeData.argsAs<LauncherRouteArgs>(
          orElse: () => const LauncherRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: Launcher(
          key: args.key,
          initialTabIndex: args.initialTabIndex,
        ),
      );
    },
    SignInRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SignInPage(),
      );
    },
  };
}

/// generated route for
/// [BasePage]
class BaseRoute extends PageRouteInfo<void> {
  const BaseRoute({List<PageRouteInfo>? children})
      : super(
          BaseRoute.name,
          initialChildren: children,
        );

  static const String name = 'BaseRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ChatPage]
class ChatRoute extends PageRouteInfo<ChatRouteArgs> {
  ChatRoute({
    Key? key,
    required UserDTO me,
    required UserDTO companion,
    List<PageRouteInfo>? children,
  }) : super(
          ChatRoute.name,
          args: ChatRouteArgs(
            key: key,
            me: me,
            companion: companion,
          ),
          initialChildren: children,
        );

  static const String name = 'ChatRoute';

  static const PageInfo<ChatRouteArgs> page = PageInfo<ChatRouteArgs>(name);
}

class ChatRouteArgs {
  const ChatRouteArgs({
    this.key,
    required this.me,
    required this.companion,
  });

  final Key? key;

  final UserDTO me;

  final UserDTO companion;

  @override
  String toString() {
    return 'ChatRouteArgs{key: $key, me: $me, companion: $companion}';
  }
}

/// generated route for
/// [Launcher]
class LauncherRoute extends PageRouteInfo<LauncherRouteArgs> {
  LauncherRoute({
    Key? key,
    int? initialTabIndex,
    List<PageRouteInfo>? children,
  }) : super(
          LauncherRoute.name,
          args: LauncherRouteArgs(
            key: key,
            initialTabIndex: initialTabIndex,
          ),
          initialChildren: children,
        );

  static const String name = 'LauncherRoute';

  static const PageInfo<LauncherRouteArgs> page =
      PageInfo<LauncherRouteArgs>(name);
}

class LauncherRouteArgs {
  const LauncherRouteArgs({
    this.key,
    this.initialTabIndex,
  });

  final Key? key;

  final int? initialTabIndex;

  @override
  String toString() {
    return 'LauncherRouteArgs{key: $key, initialTabIndex: $initialTabIndex}';
  }
}

/// generated route for
/// [SignInPage]
class SignInRoute extends PageRouteInfo<void> {
  const SignInRoute({List<PageRouteInfo>? children})
      : super(
          SignInRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignInRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
