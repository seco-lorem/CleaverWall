class Endpoints {
  Endpoints._();

  // base url
  static const String baseURL = "http://localhost:8000";

  // receiveTimeout
  static const int receiveTimeout = 15000;

  // connectTimeout
  static const int connectionTimeout = 15000;

  static const String submission = '/submission';
  static const String user = '/user';
  static const String login = '/login';
  static const String registration = '/registration';
  static const String logout = '/logout';
}
