class Endpoints {
  // Endpoints._();

  // base url
  //https://6d2c-139-179-195-53.ngrok-free.app
  //http://localhost:8000
  static String baseURL = "https://6d2c-139-179-195-53.ngrok-free.app";
  static String urlCode = "6d2c-139-179-195-53";

  // receiveTimeout
  static const int receiveTimeout = 15000;

  // connectTimeout
  static const int connectionTimeout = 15000;

  static const String submission = '/submission';
  static const String user = '/user';
  static const String login = '/login';
  static const String registration = '/registration';
  static const String logout = '/logout';

  static setBaseURL(String url) {
    urlCode = url;
    baseURL = "https://$url.ngrok-free.app";
  }
  static getBaseURL() {
    return baseURL;
  }
}
