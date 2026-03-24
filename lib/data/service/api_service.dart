import 'dart:developer';

import 'package:bechdu_partner/data/secure_storage/secure_storage.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@injectable
class ApiService {
  final Dio _dio;

  ApiService(this._dio);

  Future<Response<dynamic>> get(
    String url, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? data,
    bool addHeader = true,
  }) async {
    try {
      if (addHeader) {
        final accessToken =
            await SharedPref.getToken().then((token) => token.accessToken);
        _dio.options.headers.addAll(
          {
            'authorization': "Bearer $accessToken",
            ...headers ?? {'content-Type': 'application/json'}
          },
        );
      } else {
        _dio.options.headers['content-Type'] = 'application/json';
      }
      log('api uri ==>get  ${_dio.options.baseUrl + url}');
      log('accessToken ==>  ${_dio.options.headers['authorization']}');
      final response =
          await _dio.get(url, data: data, queryParameters: queryParameters);
      return response;
    } on DioException catch (exception) {
      _handleDioError(exception);
      rethrow;
    } catch (e) {
      log('Exception => $e');
      rethrow;
    }
  }

  Future<Response<dynamic>> post(
    String url, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    dynamic data,
    bool addHeader = true,
  }) async {
    try {
      if (addHeader) {
        final accessToken =
            await SharedPref.getToken().then((token) => token.accessToken);
        _dio.options.headers.addAll(
          {
            'authorization': "Bearer $accessToken",
            ...headers ?? {'content-Type': 'application/json'}
          },
        );
      } else {
        _dio.options.headers['content-Type'] = 'application/json';
      }
      log('api uri ==>post  ${_dio.options.baseUrl + url}');
      final response = await _dio.post(
        url,
        data: data is FormData ? data : data as Map<String, dynamic>?,
        queryParameters: queryParameters,
      );
      return response;
    } on DioException catch (exception) {
      _handleDioError(exception);
      rethrow;
    } catch (e) {
      log('Exception => $e');
      rethrow;
    }
  }

  Future<Response<dynamic>> put(
    String url, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    dynamic data,
    bool addHeader = true,
  }) async {
    try {
      if (addHeader) {
        final accessToken =
            await SharedPref.getToken().then((token) => token.accessToken);
        _dio.options.headers.addAll(
          {
            'authorization': "Bearer $accessToken",
            ...headers ?? {'content-Type': 'application/json'}
          },
        );
      } else {
        _dio.options.headers['content-Type'] = 'application/json';
      }
      log('api uri ==>put  ${_dio.options.baseUrl + url}');
      final response = await _dio.put(url,
          data: data is FormData ? data : data as Map<String, dynamic>?,
          queryParameters: queryParameters);
      return response;
    } on DioException catch (exception) {
      _handleDioError(exception);
      rethrow;
    } catch (e) {
      log('Exception => $e');
      rethrow;
    }
  }

  Future<Response<dynamic>> delete(
    String url, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? data,
    bool addHeader = true,
  }) async {
    try {
      if (addHeader) {
        final accessToken =
            await SharedPref.getToken().then((token) => token.accessToken);
        _dio.options.headers.addAll(
          {
            'authorization': "Bearer $accessToken",
            ...headers ?? {'content-Type': 'application/json'}
          },
        );
      } else {
        _dio.options.headers['content-Type'] = 'application/json';
      }
      log('api uri ==>delete  ${_dio.options.baseUrl + url}');
      final response =
          await _dio.delete(url, data: data, queryParameters: queryParameters);
      return response;
    } on DioException catch (exception) {
      _handleDioError(exception);
      rethrow;
    } catch (e) {
      log('Exception => $e');
      rethrow;
    }
  }

  Future<Response<dynamic>> patch(
    String url, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? data,
    bool addHeader = true,
  }) async {
    try {
      if (addHeader) {
        final accessToken =
            await SharedPref.getToken().then((token) => token.accessToken);
        _dio.options.headers.addAll(
          {
            'authorization': "Bearer $accessToken",
            ...headers ?? {'content-Type': 'application/json'}
          },
        );
      } else {
        _dio.options.headers['content-Type'] = 'application/json';
      }
      log('api uri ==>patch  ${_dio.options.baseUrl + url}');
      final response =
          await _dio.patch(url, data: data, queryParameters: queryParameters);
      return response;
    } on DioException catch (exception) {
      _handleDioError(exception);
      rethrow;
    } catch (e) {
      log('Exception => $e');
      rethrow;
    }
  }

  void _handleDioError(DioException exception) {
    log('Dio exception code => ${exception.response?.statusCode}');
    log('Dio exception => ${exception.response}');
  }
}
