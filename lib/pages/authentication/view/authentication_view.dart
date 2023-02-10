import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:go_router/go_router.dart';
import 'package:inex/data_form/data_form.dart';
import 'package:inex/pages/authentication/bloc/authentication_bloc.dart';
import 'package:inex/sl.dart';

class AuthenticationView extends StatelessWidget {
  const AuthenticationView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthenticationBloc>(
      create: (context) => sl(),
      child: const _AuthenticationView(),
    );
  }
}

class _AuthenticationView extends StatelessWidget {
  const _AuthenticationView();

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthenticationBloc, AuthenticationState>(
      listener: (context, state) {
        if (state.status == FormzStatus.submissionSuccess) {
          context.pop();
        }
      },
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            BlocSelector<AuthenticationBloc, AuthenticationState, EmailForm>(
              selector: (state) => state.emailForm,
              builder: (context, emailForm) {
                return TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    labelText: 'Email',
                    errorText:
                        emailForm.invalid ? emailForm.error!.message : null,
                  ),
                  onChanged: (value) {
                    context
                        .read<AuthenticationBloc>()
                        .add(AuthenticationEvent.changeEmail(value));
                  },
                );
              },
            ),
            const SizedBox(height: 8),
            BlocBuilder<AuthenticationBloc, AuthenticationState>(
              buildWhen: (previous, current) {
                return previous.passwordForm != current.passwordForm ||
                    previous.hidePassword != current.hidePassword;
              },
              builder: (context, state) {
                return TextFormField(
                  obscureText: state.hidePassword,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    labelText: 'Password',
                    errorText: state.passwordForm.invalid
                        ? state.passwordForm.error!.message
                        : null,
                    suffix: IconButton(
                      onPressed: () {
                        context.read<AuthenticationBloc>().add(
                              AuthenticationEvent.changeShowPassword(
                                hidePassword: !state.hidePassword,
                              ),
                            );
                      },
                      icon: Icon(
                        state.hidePassword
                            ? Icons.remove_red_eye_outlined
                            : Icons.remove_red_eye_rounded,
                      ),
                    ),
                  ),
                  onChanged: (value) {
                    context
                        .read<AuthenticationBloc>()
                        .add(AuthenticationEvent.changePassword(value));
                  },
                );
              },
            ),
            const SizedBox(height: 16),
            BlocSelector<AuthenticationBloc, AuthenticationState, bool>(
              selector: (state) => state.isSignUp,
              builder: (context, isSignUp) {
                return CheckboxListTile(
                  value: isSignUp,
                  title: const Text('I dont have an account, Sign me up'),
                  onChanged: (value) {
                    context.read<AuthenticationBloc>().add(
                          AuthenticationEvent.changeIsSigUp(isSignUp: value!),
                        );
                  },
                );
              },
            ),
            const SizedBox(height: 16),
            BlocBuilder<AuthenticationBloc, AuthenticationState>(
              buildWhen: (previous, current) {
                return previous.status != current.status ||
                    previous.isSignUp != current.isSignUp;
              },
              builder: (context, state) {
                if (state.status.isSubmissionInProgress) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                return TextButton.icon(
                  onPressed: !state.status.isValidated
                      ? null
                      : () {
                          if (state.isSignUp) {
                            context
                                .read<AuthenticationBloc>()
                                .add(const AuthenticationEvent.singUp());
                          } else {
                            context
                                .read<AuthenticationBloc>()
                                .add(const AuthenticationEvent.login());
                          }
                        },
                  icon: Icon(
                    state.isSignUp
                        ? Icons.person_add_alt_1_outlined
                        : Icons.person_outline,
                  ),
                  label: Text(state.isSignUp ? 'Sign Up' : 'Login'),
                );
              },
            ),
            BlocBuilder<AuthenticationBloc, AuthenticationState>(
              buildWhen: (previous, current) =>
                  previous.errorMessage != current.errorMessage,
              builder: (context, state) {
                if (state.errorMessage == null) {
                  return const SizedBox.shrink();
                }
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    state.errorMessage!,
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(color: Colors.red),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
