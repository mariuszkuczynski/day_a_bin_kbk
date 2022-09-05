part of 'root_cubit.dart';

@immutable
class RootState {
  final User? user;
  final bool isloading;
  final String errorMessage;

   const RootState({required this.user, required this.isloading, required this.errorMessage,  });
}
