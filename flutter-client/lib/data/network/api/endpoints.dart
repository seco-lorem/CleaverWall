class Endpoints {
  Endpoints._();

  // base url
  //https://6d2c-139-179-195-53.ngrok-free.app
  //http://localhost:8000
  static const String baseURL = "https://6d2c-139-179-195-53.ngrok-free.app";

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
