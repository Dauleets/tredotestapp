import 'dart:developer';
import 'package:http/http.dart';

class ApiClient extends BaseClient {
  final Client _client = Client();

  @override
  Future<StreamedResponse> send(BaseRequest request) async {
    log("📤 Запрос: ${request.method} ${request.url}");
    
    if (request.headers.isNotEmpty) {
      log("🔹 Заголовки: ${request.headers}");
    }

    if (request is Request && request.body.isNotEmpty) {
      log("📄 Тело запроса: ${request.body}");
    }

    try {
      final response = await _client.send(request);
      
      log("📥 Ответ [${response.statusCode}]: ${response.reasonPhrase}");

      return response;
    } catch (e) {
      log("🚨 Ошибка сети: $e");
      throw Exception("Ошибка сети: $e");
    }
  }
}
