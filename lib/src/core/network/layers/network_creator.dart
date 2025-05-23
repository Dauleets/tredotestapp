// ignore_for_file: avoid-non-null-assertion

import 'dart:io';

import 'package:tredo/src/core/network/interfaces/base_client_generator.dart';
import 'package:tredo/src/core/network/network_options/network_options.dart';
import 'package:dio/dio.dart';

class NetworkCreator {
  Future<Response> request({
    required BaseClientGenerator route,
    required Dio dio,
    NetworkOptions? options,
  }) =>
      dio.fetch(
        RequestOptions(
          headers: dio.options.headers,
          baseUrl: dio.options.baseUrl,
          method: route.method,
          path: route.path,
          queryParameters: route.queryParameters,
          data: route.body,
          sendTimeout: Duration(milliseconds: route.sendTimeout ?? 30000),
          receiveTimeout: Duration(milliseconds: route.receiveTimeOut ?? 60000), // Increased timeout
          onReceiveProgress: options?.onReceiveProgress,
          onSendProgress: options?.onSendProgress,
          validateStatus: (statusCode) =>
              statusCode! >= HttpStatus.ok &&
              statusCode <= HttpStatus.multipleChoices,
        ),
      );
}
