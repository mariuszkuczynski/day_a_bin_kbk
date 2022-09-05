import 'package:day_a_bin_kbk/app/Root_page/cubit/root_cubit.dart';
import 'package:day_a_bin_kbk/app/logowanie/login_page.dart';
import 'package:day_a_bin_kbk/app/wyszukiwanie/wyszukiwanie.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RootPage extends StatelessWidget {
   const RootPage( {
    Key? key, 
  }) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RootCubit()..start(),
      child: BlocBuilder<RootCubit, RootState>(
        builder: (context, state) {
          final user = state.user;

          if (state.errorMessage.isNotEmpty) {
            return Center(
              child: Text(
                'Coś poszło nie tak ${state.user}',
              ),
            );
          }

          if (state.isloading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (user == null) {
            return LoginPage();
          }
          return SearchPage(
            user: user,
          );
        },
      ),
    );
  }
}
