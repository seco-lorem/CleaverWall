import 'package:dio/adapter_browser.dart';
import 'package:dio/dio.dart';

HttpClientAdapter getAdapter() {
  var adapter = BrowserHttpClientAdapter();
  adapter.withCredentials = true;
  return adapter;
}