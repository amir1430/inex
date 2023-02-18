import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inex/data_source/model/inex_user.dart';
import 'package:inex/exceptions/exceptions.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'authentication_data_source.freezed.dart';

@Freezed()
class AuthenticationStatus with _$AuthenticationStatus {
  const factory AuthenticationStatus.initial() = _Initial;
  const factory AuthenticationStatus.authenticated({
    required InexUser user,
  }) = _Authenticated;
  const factory AuthenticationStatus.unAuthenticated() = _UnAuthenticated;
}

abstract class AuthenticationDataSource {
  InexUser? get currentUser;
  Stream<AuthenticationStatus> authStatus();
  Future<void> loginWithEmail({
    required String email,
    required String password,
  });
  Future<void> signUpWithEmail({
    required String email,
    required String password,
  });
  Future<void> logOut();
}

class SupaBaseAuthDataSource implements AuthenticationDataSource {
  const SupaBaseAuthDataSource({required this.supabase});

  final Supabase supabase;

  @override
  InexUser? get currentUser {
    if (supabase.client.auth.currentSession == null) {
      return null;
    }
    return InexUser(
      email: supabase.client.auth.currentSession!.user.email ?? '',
      uuid: supabase.client.auth.currentSession!.user.id,
    );
  }

  @override
  Stream<AuthenticationStatus> authStatus() async* {
    if (supabase.client.auth.currentSession == null) {
      yield const AuthenticationStatus.unAuthenticated();
    }
    yield* supabase.client.auth.onAuthStateChange
        .transform(_supaBaseAuthStateToAuthenticationStatus);
  }

  @override
  Future<void> loginWithEmail({
    required String email,
    required String password,
  }) async {
    try {
      await supabase.client.auth.signInWithPassword(
        password: password,
        email: email,
      );
    } on AuthException catch (e) {
      throw InexException(message: e.message);
    }
  }

  @override
  Future<void> signUpWithEmail({
    required String email,
    required String password,
  }) async {
    try {
      await supabase.client.auth.signUp(
        password: password,
        email: email,
      );
    } on AuthException catch (e) {
      throw InexException(message: e.message);
    }
  }

  StreamTransformer<AuthState, AuthenticationStatus>
      get _supaBaseAuthStateToAuthenticationStatus {
    return StreamTransformer.fromHandlers(
      handleData: (data, sink) {
        if (data.session == null) {
          sink.add(const AuthenticationStatus.unAuthenticated());
        } else {
          sink.add(
            AuthenticationStatus.authenticated(
              user: InexUser(
                email: data.session!.user.email ?? '',
                uuid: data.session!.user.id,
              ),
            ),
          );
        }
      },
    );
  }

  @override
  Future<void> logOut() async => supabase.client.auth.signOut();
}
