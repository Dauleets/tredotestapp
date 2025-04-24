import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:tredo/src/core/resources/resources.dart';
import 'package:tredo/src/feature/app/bloc/app_bloc.dart';
import 'package:tredo/src/feature/app/model/user/user_dto.dart';
import 'package:tredo/src/feature/app/router/app_router.dart';
import 'package:tredo/src/feature/app/widgets/custom_app_bar.dart';
import 'package:tredo/src/feature/app/widgets/custom_loading_widget.dart';
import 'package:tredo/src/feature/auth/data/database/user_storage.dart';
import 'package:tredo/src/feature/auth/presentation/cubit/auth_cubit.dart';
import 'package:tredo/src/feature/base/presentation/cubit/base_cubit.dart';

@RoutePage()
class BasePage extends StatefulWidget {
  const BasePage({super.key});

  @override
  State<BasePage> createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  final ScrollController scrollController = ScrollController();
  UserDTO? me;
  @override
  void initState() {
    context.read<BaseCubit>().fetchAllUsers();
    getMe();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

   getMe() async {
    me = await UserStorage().getUser();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: GestureDetector(
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: Scaffold(
          appBar: CustomAppBar(
            backgroundColor: AppColors.colorMain,
            title: 'Tredo App Test',
            style: AppTextStyles.m20w400.copyWith(color: AppColors.kWhite),
            leadingExist: false,
            actions: [
              CupertinoButton(
                padding: EdgeInsets.zero,
                minSize: 0,
                onPressed: () {
                  context.read<BaseCubit>().fetchAllUsers();
                },
                child: const Icon(
                  Icons.replay_outlined,
                  color: AppColors.kWhite,
                ),
              ),
              const SizedBox(width: 18),
              CupertinoButton(
                padding: EdgeInsets.zero,
                minSize: 0,
                onPressed: () {
                  context.read<AuthCubit>().signOut();
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Sign Out...")),
                  );

                  context.read<AppBloc>().add(const AppEvent.checkAuth());
                  setState(() {});
                  context.router
                      .pushAndPopUntil(LauncherRoute(), predicate: (_) => true);
                },
                child: const Icon(
                  Icons.exit_to_app,
                  color: AppColors.kWhite,
                ),
              ),
              const SizedBox(width: 18)
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16)
                .copyWith(bottom: 24),
            child: BlocBuilder<BaseCubit, BaseState>(
              builder: (context, state) {
                if (state is UserListLoading) {
                  return const CustomLoadingWidget();
                } else if (state is UserListLoaded) {
                  if (kDebugMode) {
                    print(state.users.length.toString());
                  }
                  return Center(
                    child: FutureBuilder<UserDTO?>(
                      future: UserStorage().getUser(),
                      builder: (context, snapshot) {
                        if (!snapshot.hasData)
                          // ignore: curly_braces_in_flow_control_structures
                          return const CustomLoadingWidget();

                        final availableUsers =
                            state.users.where((u) => u.uid != me?.uid).toList();

                        if (availableUsers.isEmpty) {
                          return const Center(
                            child: Text("No users",
                                style: TextStyle(fontSize: 18)),
                          );
                        }

                        return ListView.builder(
                          itemCount: availableUsers.length,
                          itemBuilder: (context, index) {
                            final companion = availableUsers[index];

                            return ListTile(
                              onTap: () {
                                log(me?.uid.toString()??'no');
                                if (me != null) {
                                  context.router.push(
                                      ChatRoute(me: me!, companion: companion));
                                }
                              },
                              title: Text(companion.name ?? 'No Name',
                                  style: AppTextStyles.m20w600
                                      .copyWith(color: AppColors.dark)),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(companion.email ?? 'email not found',
                                      style: AppTextStyles.m16w400
                                          .copyWith(color: AppColors.dark)),
                                  Text('id: ${companion.uid}',
                                      style: AppTextStyles.m12w400
                                          .copyWith(color: AppColors.dark)),
                                ],
                              ),
                              trailing: const Icon(
                                Icons.account_box,
                                size: 30,
                                color: AppColors.colorMain,
                              ),
                            );
                          },
                        );
                      },
                    ),
                  );
                } else if (state is UserListError) {
                  return Text(state.message,
                      style: AppTextStyles.m16w400
                          .copyWith(color: AppColors.dark));
                }
                return Text('sad',
                    style:
                        AppTextStyles.m16w400.copyWith(color: AppColors.dark));
              },
            ),
          ),
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}
