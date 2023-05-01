import 'package:dio/dio.dart';
import 'package:webclient/data/models/submission_model.dart';
import 'package:webclient/data/network/api/authentication_api.dart';
import 'package:webclient/data/network/dio_exception.dart';

class AuthenticationRepository {
  final AuthenticationApi authenticationApi;

  AuthenticationRepository(this.authenticationApi);

  Future<bool> signIn( String username, String password ) async {
    try {
      final response = await authenticationApi.signIn( username, password );
      if( response.statusCode == 200 ){
        return true;
      }
      return false;
      final status = response.data['status'];
      return status;
    } on DioError catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      throw errorMessage;
    }
  }

  Future<bool> signOut( ) async {
    try {
      final response = await authenticationApi.signOut();
      if( response.statusCode == 200 ){
        return true;
      }
      return false;
    } on DioError catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      throw errorMessage;
    }
  }
}
