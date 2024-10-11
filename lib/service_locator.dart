import 'package:e_commerce_mobile_app/data/auth/repos/auth_repo_impl.dart';
import 'package:e_commerce_mobile_app/data/auth/source/auth_firebase_services.dart';
import 'package:e_commerce_mobile_app/domain/auth/repos/auth_repo.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> initializeDependancies() async {
//services
  sl.registerSingleton<AuthFirebaseServices>(AuthFirebaseServicesImpl());

//repos
  sl.registerSingleton<AuthRepo>(AuthRepoImpl());
//usecases
}
