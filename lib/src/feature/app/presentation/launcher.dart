// ignore: unused_import
// ignore_for_file: use_build_context_synchronously

import 'dart:developer';

import 'package:tredo/src/feature/auth/presentation/ui/signin_page.dart';
import 'package:tredo/src/feature/base/presentation/ui/base_page.dart';
import 'package:auto_route/auto_route.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:tredo/src/feature/app/bloc/app_bloc.dart';
import 'package:tredo/src/feature/app/widgets/custom_loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// ignore: unused_element
const _tag = 'Launcher';

@RoutePage(name: 'LauncherRoute')
class Launcher extends StatefulWidget {
  final int? initialTabIndex;

  const Launcher({super.key, this.initialTabIndex});

  @override
  State<Launcher> createState() => _LauncherState();
}

class _LauncherState extends State<Launcher> with WidgetsBindingObserver {
  @override
  void initState() {
    FToast().init(context);

    BlocProvider.of<AppBloc>(context).add(const AppEvent.checkAuth());

    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    log('MyApp state = $state');
    if (state == AppLifecycleState.inactive) {
      // app transitioning to other state.
    } else if (state == AppLifecycleState.paused) {
      // app is on the background.
    } else if (state == AppLifecycleState.detached) {
      // flutter engine is running but detached from views
    } else if (state == AppLifecycleState.resumed) {
      // app is visible and running.
      // runApp(App()); // run your App class again
    }
  }

  

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppBloc, AppState>(
      listener: (context, state) {
        state.maybeWhen(
          inAppState: () {},
          orElse: () {},
        );
      },
      builder: (context, state) => state.maybeWhen(
        inAppState: () =>  const BasePage(),
        notAuthorizedState: () => const SignInPage(),
        loadingState: () => const _Scaffold(
          child: CustomLoadingWidget(),
        ),
        orElse: () => Container(),
      ),
    );
  }
}

class _Scaffold extends StatelessWidget {
  final Widget child;

  const _Scaffold({
    required this.child,
    // super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: child),
    );
  }
}
