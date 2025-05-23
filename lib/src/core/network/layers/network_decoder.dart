import 'package:tredo/src/core/extension/extensions.dart';
import 'package:tredo/src/core/network/interfaces/base_model.dart';
import 'package:dio/dio.dart';

class NetworkDecoder {
  /// Decoding `JSON` Objects to data models
  K decode<K, T>({
    required Response response,
    required BaseModel responseType,
  }) {
    try {
      if (response.data is List) {
        final list = response.data as List;

        if (list is List<String>) {
          return List<T>.from(list.mapToList((e) => e)) as K;
        }

        return List<T>.from(list.mapToList(
            (e) => responseType.fromJson(e as Map<String, dynamic>))) as K;
      } else {
        return responseType.fromJson(response.data as Map<String, dynamic>)
            as K;
      }
    } on Object {
      rethrow;
    }
  }

  K decodeFreezed<K, T>({
    required Response response,
    required BaseModel responseType,
  }) {
    try {
      if (response.data is List) {
        final list = response.data as List;

        if (list is List<String>) {
          return List<T>.from(list.mapToList((e) => e)) as K;
        }

        return List<T>.from(list.mapToList(
            (e) => responseType.fromJson(e as Map<String, dynamic>))) as K;
      } else {
        return responseType.fromJson(response.data as Map<String, dynamic>)
            as K;
      }
    } on Object {
      rethrow;
    }
  }
}
