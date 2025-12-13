import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:tongi_turf/core/theme/app_colors.dart';
import 'package:tongi_turf/core/widgets/custom_widgets.dart';
import 'package:tongi_turf/features/authentication/view/bloc/login/login_bloc.dart';
import 'package:tongi_turf/features/authentication/view/widgets/common_textfield.dart';
import 'package:tongi_turf/features/authentication/view/widgets/password_widget.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => GetIt.instance<LoginBloc>(),
      child: CustomScaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [AppColors.secondary, AppColors.primaryLight],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Center(
            child: Container(
              width: width(context) * 0.9,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: AppColors.background.withOpacity(0.4),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10,
                    spreadRadius: 1,
                    color: AppColors.primary.withOpacity(0.1),
                  ),
                ],
                borderRadius: BorderRadius.circular(16),
              ),
              child: BlocConsumer<LoginBloc, LoginState>(
                listener: (context, state) {
                  if (state.isSuccess) {
                    Navigator.pushNamedAndRemoveUntil(
                      context,
                      '/bottom_nav_bar_page',
                      (route) => false,
                    );
                  }

                  if (state.errorMessage != null) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text(state.errorMessage!)),
                    );
                  }
                },

                builder: (context, state) {
                  final bloc = context.read<LoginBloc>();

                  return Form(
                    key: _formKey,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset("assets/images/logo.png", height: 150),
                        sH8(),
                        t32b_textPrimary("Login"),
                        sH4(),
                        t14_textSecondary(
                          "Enter your email and password to login",
                        ),
                        sH16(),

                        CommonTextField(
                          label: "Email",
                          keyboardType: TextInputType.emailAddress,
                          controller: emailController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Email cannot be empty";
                            }
                            if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                              return "Enter a valid email";
                            }
                            return null;
                          },
                        ),
                        sH8(),
                        PasswordTextField(
                          controller: passwordController,

                          label: "Password",
                          isVisible: state.isPasswordVisible,
                          onToggle: () => bloc.add(TogglePasswordVisibility()),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Password cannot be empty";
                            }
                            if (value.length < 6) {
                              return "Password must be at least 6 characters";
                            }
                            return null;
                          },
                        ),
                        sH16(),
                        sH8(),
                        CustomButton(
                          title: "Login",
                          isLoading: state.isLoading,
                          onTap: () {
                            if (_formKey.currentState!.validate()) {
                              bloc.add(
                                LoginSubmitted(
                                  email: emailController.text,
                                  password: passwordController.text,
                                ),
                              );
                            }
                          },
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    required this.onTap,
    required this.title,
    this.isLoading = false,
    super.key,
  });

  final VoidCallback onTap;
  final String title;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width(context),
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(8),
        ),

        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Center(child: isLoading ? loader() : t18b_textWhite(title)),
        ),
      ),
    );
  }
}
