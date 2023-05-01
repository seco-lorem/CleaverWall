import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:webclient/data/network/api/endpoints.dart';
import 'package:webclient/logging_options.dart';

class DioClient {
// dio instance
  final Dio _dio = Dio();

  DioClient() {
    _dio
      ..options.baseUrl = Endpoints.baseURL
      ..options.connectTimeout = Endpoints.connectionTimeout
      ..options.receiveTimeout = Endpoints.receiveTimeout
      ..options.responseType = ResponseType.json
      ..interceptors.add(
        InterceptorsWrapper(
          onRequest: (RequestOptions options,
              RequestInterceptorHandler handler) async {
            AppLogging.logger.v(options.uri);
            AppLogging.logger.d(options.headers);

            if (options.method == 'POST' || options.method == 'PATCH') {
              dynamic data = options.data;
              if (data is Map) {
                AppLogging.logger.d(data);
              } else if (data is FormData) {
                final map = <String, dynamic>{};
                for (final file in data.files) {
                  map[file.key] =
                      '${file.value.filename} ${file.value.contentType}';
                }
                for (final field in data.fields) {
                  map[field.key] = field.value;
                }
                AppLogging.logger.d(map);
              }
            }

            return handler.next(options);
          },
          onResponse:
              (Response<dynamic> response, ResponseInterceptorHandler handler) {
            AppLogging.logger.v(
                '(${response.statusCode}, ${response.statusMessage}) - ${response.requestOptions.uri}');
            if (AppLogging.showResponseData) {
              AppLogging.logger.i(response.data);
            }
            return handler.next(response);
          },
          onError: (DioError error, ErrorInterceptorHandler handler) {
            AppLogging.logger.v(
                '(${error.response?.statusCode}) - ${error.requestOptions.uri}');
            AppLogging.logger.wtf(error.response?.toString());

            return handler.next(error);
          },
        ),
      );
  }

  // Get:-----------------------------------------------------------------------
  Future<Response> get(
    String url, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response response = await _dio.get(
        url,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  // Post:----------------------------------------------------------------------
  Future<Response> post(
    String url, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response response = await _dio.post(
        url,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      debugPrint(response.toString());
      return response;
    } catch (e) {
      rethrow;
    }
  }

  // Put:-----------------------------------------------------------------------
  Future<Response> put(
    String url, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response response = await _dio.put(
        url,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  // Delete:--------------------------------------------------------------------
  Future<dynamic> delete(
    String url, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response response = await _dio.delete(
        url,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
      );
      return response.data;
    } catch (e) {
      rethrow;
    }
  }

  void updateCookie(String csrftoken, String sessionid) {
    _dio.options.headers["Cookie"] =
        "csrftoken=$csrftoken; sessionid=$sessionid";
    _dio.options.headers["X-CSRFToken"] = csrftoken;
  }

  void clearCookie() {
    _dio.options.headers["Cookie"] = "";
  }

  void close() {
    _dio.close();
  }
}
