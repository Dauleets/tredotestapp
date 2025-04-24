import 'package:tredo/src/core/network/layers/network_executer.dart';

import 'package:tredo/src/feature/settings/database/settings_dao.dart';
import 'package:tredo/src/feature/settings/repository/settings_repository.dart';

import 'package:shared_preferences/shared_preferences.dart';

abstract class IRepositoryStorage {
  // dao's
  SettingsDao get settingsDao;

  // Repositories
  ISettingsRepository get settings;
/*  AuthDao get authDao;
  IAuthRepository get authRepository;
  IProfileRepository get profileRepository;
  IMainRepository get mainRepository;
  IDetailRepository get detailRepository;
  ISavedRepository get savedRepository;
  IMyProjectsRepository get myProjectsRepository;*/

// // Data sources
// IAuthRemoteDS get authRemoteDS;
// IProfileRemoteDS get profileRemoteDS;
// IMainRemoteDS get mainRemoteDS;
// IDetailRemoteDS get detailRemoteDS;
// ISavedRemoteDS get savedRemoteDS;
// IMyProjectsRemoteDS get myProjectsRemoteDS;
}

class RepositoryStorage implements IRepositoryStorage {
  // ignore: unused_field
  // final AppDatabase _appDatabase;
  final SharedPreferences _sharedPreferences;

  RepositoryStorage({
    // required AppDatabase appDatabase,
    required SharedPreferences sharedPreferences,
    required NetworkExecuter networkExecuter,
  })  : // _appDatabase = appDatabase,
        _sharedPreferences = sharedPreferences;

  ///
  /// Repositories
  ///

  @override
  ISettingsRepository get settings => SettingsRepository(
        settingsDao: SettingsDao(sharedPreferences: _sharedPreferences),
      );

  @override
  SettingsDao get settingsDao =>
      SettingsDao(sharedPreferences: _sharedPreferences);

// @override
// IAuthRepository get authRepository => AuthRepositoryImpl(
//       remoteDS: authRemoteDS,
//       authDao: authDao,
//       client: _networkExecuter,
//       settingsDao: settingsDao,
//     );
//
// @override
// IProfileRepository get profileRepository => ProfileRepositoryImpl(
//       remoteDS: profileRemoteDS,
//       authDao: authDao,
//       client: _networkExecuter,
//       settingsDao: settingsDao,
//     );
//
// @override
// IMainRepository get mainRepository => MainyRepositoryImpl(
//       remoteDS: mainRemoteDS,
//       client: _networkExecuter,
//     );
//
// @override
// IDetailRepository get detailRepository => IDetailRepositoryImpl(
//       remoteDS: detailRemoteDS,
//       client: _networkExecuter,
//     );
//
// @override
// ISavedRepository get savedRepository => ISavedRepositoryImpl(
//       remoteDS: savedRemoteDS,
//       client: _networkExecuter,
//     );
//
// @override
// IMyProjectsRepository get myProjectsRepository => IMyProjectsRepositoryImpl(
//       remoteDS: myProjectsRemoteDS,
//       client: _networkExecuter,
//     );
//
// ///
// /// Remote datasources
// ///
// @override
// IAuthRemoteDS get authRemoteDS =>
//     AuthRemoteDSImpl(client: _networkExecuter, authDao: authDao);
//
// @override
// AuthDao get authDao => AuthDao(sharedPreferences: _sharedPreferences);
//
// @override
// SettingsDao get settingsDao =>
//     SettingsDao(sharedPreferences: _sharedPreferences);
//
// @override
// IProfileRemoteDS get profileRemoteDS =>
//     ProfileRemoteDSImpl(client: _networkExecuter);
//
// @override
// IMainRemoteDS get mainRemoteDS => IMainRemoteDSImpl(client: _networkExecuter);
//
// @override
// IDetailRemoteDS get detailRemoteDS =>
//     IDetailRemoteDSImpl(client: _networkExecuter);
//
// @override
// ISavedRemoteDS get savedRemoteDS =>
//     ISavedRemoteDSImpl(client: _networkExecuter);
//
// @override
// IMyProjectsRemoteDS get myProjectsRemoteDS =>
//     IMyProjectsRemoteDSImpl(client: _networkExecuter);
}
