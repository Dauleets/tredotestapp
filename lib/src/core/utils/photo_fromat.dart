import 'package:tredo/src/core/enum/environment.dart';

String formatUrl(String originalUrl) {
  const String baseUrl = 'http://localhost';

  // Убедитесь, что URL начинается с http://localhost/
  if (originalUrl.startsWith(baseUrl)) {
    // Заменяем http://localhost/ на kBaseUrl
    String formattedUrl = originalUrl.replaceFirst(baseUrl, kBaseUrl);

    // Убираем возможные окончания /api/v1 или /api/ из kBaseUrl
    if (formattedUrl.contains('/api/v1')) {
      formattedUrl = formattedUrl.replaceFirst('/api/v1', '');
    } else if (formattedUrl.contains('/api/')) {
      formattedUrl = formattedUrl.replaceFirst('/api/', '');
    }

    return formattedUrl;
  } else {
    return originalUrl;
  }
}
