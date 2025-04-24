import 'package:platform_info/platform_info.dart';

/// Окружение, например:
/// + development
/// + integration
/// + testing
/// + staging
/// + production
String get environment => _kEnvironment.isEmpty
    ? platform.buildMode.when<String>(
        debug: () => 'dev',
        profile: () => 'dev',
        release: () => 'prod',
      )
    : _kEnvironment;

bool get isProd => environment == 'prod';
// bool get isProd => false;

/// Окуржение переданное при билде,
/// если пустой будут использоватья значения сверху
const String _kEnvironment = String.fromEnvironment('env');

/// Основная API
// final String kBaseUrl = isProd ? 'http://188.130.234.113/api' : 'http://188.130.234.121/api';
const String kBaseUrl = 'http://34.173.178.138/api';

const String kHubBaseDevUrl = 'http://185.146.1.27:8082/api';

const String kHubBaseProdUrl = 'http://185.146.1.27:8082/api';

const String kBaseUrlWSocket = '';

enum CodeConfirmPageType {
  withPhone,
  withEmail,
  forgotPassword,
  forgotPasswordProfile,
}

enum PasswordPageType {
  newPassword,
  changePassword,
  newPasswordProfile,
  changePasswordProfile,
}

enum ChooseRolePageType {
  auth,
  profile,
}

enum TicketType {
  free,
  vip,
}

// import 'package:select_annotation/select_annotation.dart';

// part 'environment.select.dart';

// @matchable
// enum Environment {
//   production,
//   staging,
//   development,
// }
