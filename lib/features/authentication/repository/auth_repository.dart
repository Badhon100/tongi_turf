
import 'package:tongi_turf/features/authentication/data_sources/auth_data_source.dart';

class AuthRepository {
  final AuthDataSource dataSource;

  AuthRepository(this.dataSource);

  Future<String> login(String email, String password) {
    return dataSource.loginUser(email, password);
  }

  Future<void> logout() {
    return dataSource.logoutUser();
  }
}
