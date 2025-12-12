import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:tongi_turf/features/authentication/view/bloc/login/login_bloc.dart';
import 'package:tongi_turf/features/authentication/view/widgets/common_widget.dart';
import 'package:tongi_turf/features/authentication/view/widgets/password_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => GetIt.instance<LoginBloc>(),
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        body: Center(
          child: Container(
            width: 330,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 10,
                  spreadRadius: 1,
                  color: Colors.black.withOpacity(0.1),
                ),
              ],
              borderRadius: BorderRadius.circular(16),
            ),
            child: BlocConsumer<LoginBloc, LoginState>(
              listener: (context, state) {
                if (state.isSuccess) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Login Successful")),
                  );
                }

                if (state.errorMessage != null) {
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(SnackBar(content: Text(state.errorMessage!)));
                }
              },
              builder: (context, state) {
                final bloc = context.read<LoginBloc>();

                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),

                    CommonTextField(
                      hintText: "Email",
                      onChanged: (v) => bloc.add(EmailChanged(v)),
                    ),
                    const SizedBox(height: 15),

                    PasswordTextField(
                      isVisible: state.isPasswordVisible,
                      onChanged: (v) => bloc.add(PasswordChanged(v)),
                      onToggle: () => bloc.add(TogglePasswordVisibility()),
                    ),
                    const SizedBox(height: 25),

                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: state.isLoading
                            ? null
                            : () => bloc.add(LoginSubmitted()),
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 14),
                        ),
                        child: state.isLoading
                            ? const CircularProgressIndicator(
                                color: Colors.white,
                              )
                            : const Text("Login"),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
