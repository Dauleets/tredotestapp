import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tredo/src/core/gen/fonts.gen.dart';
import 'package:tredo/src/feature/app/bloc/app_bloc.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tredo/src/feature/app/router/app_router.dart';
import 'package:tredo/src/feature/auth/presentation/cubit/auth_cubit.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../../../../core/gen/assets.gen.dart';
import '../../../../core/resources/resources.dart';
import '../../../app/widgets/custom_button.dart';

@RoutePage()
class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final MaskTextInputFormatter maskPhoneFormatter = MaskTextInputFormatter(
    mask: '+7 (###) ###-####',
    filter: {"#": RegExp('[0-9]')},
    type: MaskAutoCompletionType.eager,
  );

  String passwordError = '';
  String errorEmail = '';

  bool obscurePassword = true;
  bool mainButtonstyle = false;

  FocusNode focusNodeEmail = FocusNode();
  FocusNode focusNodePassword = FocusNode();

  final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    focusNodeEmail.addListener(
      () {
        setState(() {});
      },
    );

    focusNodePassword.addListener(
      () {
        setState(() {});
      },
    );

    passwordController.addListener(mainButtonStyle);
    phoneController.addListener(mainButtonStyle);

    super.initState();
  }

  @override
  void dispose() {
    phoneController.dispose();
    passwordController.dispose();

    super.dispose();
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
          floatingActionButton: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16)
                .copyWith(bottom: 24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                BlocConsumer<AuthCubit, AuthState>(
                  listener: (context, state) {
                    if (state is AuthFailure) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text(state.message)),
                      );
                    } else if (state is AuthSuccess) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                            content:
                                Text("Вход выполнен: ${state.user.email}")),
                      );

                      context.read<AppBloc>().add(const AppEvent.checkAuth());
                      setState(() {});
                      context.router.pushAndPopUntil(LauncherRoute(),
                          predicate: (_) => true);
                    }
                  },
                  builder: (context, state) {
                    return CustomButton(
                      onPressed: () {
                        context.read<AuthCubit>().signInWithGoogle();
                      },
                      style: CustomButtonStyles.primaryButtonStyle(
                        context,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(Assets.icons.google.path),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            "Gmail",
                            style: AppTextStyles.m14w400White,
                          )
                        ],
                      ),
                    );
                  },
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  width: double.maxFinite,
                  child: RichText(
                    text: TextSpan(
                      text:
                          "Создавая аккаунт или входя в приложение, вы соглашаетесь ",
                      style: AppTextStyles.m11w500,
                      children: [
                        TextSpan(
                          text:
                              "Условиями использования и Политикой конфиденциальности ",
                          style: AppTextStyles.m11w500.copyWith(
                            color: AppColors.colorMain,
                          ),
                          recognizer: TapGestureRecognizer()..onTap = () {},
                        ),
                        const TextSpan(
                          text: "\nНажимая 'Войти', вы также принимаете",
                          style: AppTextStyles.m11w500,
                        ),
                        TextSpan(
                          text: " условия публичной оферты.",
                          style: AppTextStyles.m11w500.copyWith(
                            color: AppColors.colorMain,
                          ),
                          recognizer: TapGestureRecognizer()..onTap = () {},
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          resizeToAvoidBottomInset: false,
          body: SingleChildScrollView(
            controller: scrollController,
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            physics: const BouncingScrollPhysics(),
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(Assets.images.images.path),
                    const Center(
                      child: Text(
                        'Tredo Test App',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: FontFamily.preahvihear,
                          fontWeight: FontWeight.bold,
                          fontSize: 50,
                          color: AppColors.colorMain,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          backgroundColor: Colors.white,
        ),
      ),
    );
  }

  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return "Проблемы с паролем";
    }
    if (value.length < 6) {
      return "Пароль должен быть больше 6 значек";
    }
    return null;
  }

  mainButtonStyle() {
    setState(() {
      mainButtonstyle =
          passwordController.text.isNotEmpty && maskPhoneFormatter.isFill();
    });
  }
}
