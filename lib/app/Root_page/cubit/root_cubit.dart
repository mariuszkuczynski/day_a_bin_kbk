import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'root_state.dart';

class RootCubit extends Cubit<RootState> {
  RootCubit()
      : super(
          const RootState(
            user: null,
            isloading: false,
            errorMessage: '',
          ),
        );

        Future<void> signOut() async {
          FirebaseAuth.instance.signOut();
        }

  StreamSubscription? _streamSubscription;

  Future<void> start() async {
    emit(
      const RootState(
        user: null,
        isloading: true,
        errorMessage: '',
        
      ),
    );

    _streamSubscription =
        FirebaseAuth.instance.authStateChanges().listen((user) {
      emit(RootState(
        user: user,
        isloading: false,
        errorMessage: '',
      ));
    })
          ..onError((error) {
            emit(RootState(
                user: null, isloading: false, errorMessage: error.toString()));
          });
  }

  @override
  Future<void> close() {
    _streamSubscription?.cancel();
    return super.close();
  }
}
