// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:logger/logger.dart' as _i974;
import 'package:meal_mate/core/navigation/navigation_service.dart' as _i165;
import 'package:meal_mate/core/navigation/route_generator.dart' as _i771;
import 'package:meal_mate/core/net/http_client.dart' as _i1039;
import 'package:meal_mate/di/modules/logger_module.dart' as _i258;
import 'package:meal_mate/di/modules/shared_preferences_module.dart' as _i142;
import 'package:meal_mate/features/account/data/datasource/iaccount_remote.dart'
    as _i786;
import 'package:meal_mate/features/account/domain/repository/iaccount_repository.dart'
    as _i695;
import 'package:meal_mate/features/account/domain/usecase/login_usecase.dart'
    as _i55;
import 'package:meal_mate/features/account/domain/usecase/register_usecase.dart'
    as _i827;
import 'package:meal_mate/features/home/data/datasource/ihome_remote.dart'
    as _i406;
import 'package:meal_mate/features/home/domain/repository/ihome_repository.dart'
    as _i607;
import 'package:meal_mate/features/home/domain/usecase/comments_usecase.dart'
    as _i237;
import 'package:meal_mate/features/home/domain/usecase/get_people_usecase.dart'
    as _i666;
import 'package:meal_mate/features/home/domain/usecase/test_failure_usecase.dart'
    as _i277;
import 'package:meal_mate/features/home/domain/usecase/test_success_usecase.dart'
    as _i654;
import 'package:meal_mate/features/home/domain/usecase/test_validator_usecase.dart'
    as _i313;
import 'package:meal_mate/features/more/data/datasource/imore_remote.dart'
    as _i567;
import 'package:meal_mate/features/more/domain/repository/imore_repository.dart'
    as _i310;
import 'package:meal_mate/features/more/domain/usecase/check_update_app_usecase.dart'
    as _i869;
import 'package:meal_mate/features/more/domain/usecase/report_problem_usecase.dart'
    as _i247;
import 'package:meal_mate/features/notification/data/datasource/inotification_remote.dart'
    as _i692;
import 'package:meal_mate/features/notification/domain/repository/inotification_repository.dart'
    as _i750;
import 'package:meal_mate/features/notification/domain/usecase/add_or_update_firebase_token_usecase.dart'
    as _i593;
import 'package:meal_mate/features/notification/domain/usecase/change_notification_status_usecase.dart'
    as _i477;
import 'package:meal_mate/features/notification/domain/usecase/get_notifications_usecase.dart'
    as _i782;
import 'package:meal_mate/features/pokemon/data/datasource/ipokemon_remote.dart'
    as _i493;
import 'package:meal_mate/features/pokemon/data/datasource/pokemon_remote.dart'
    as _i949;
import 'package:meal_mate/features/pokemon/data/repository/pokemon_repository.dart'
    as _i981;
import 'package:meal_mate/features/pokemon/domain/repository/irepository.dart'
    as _i334;
import 'package:meal_mate/features/pokemon/domain/usecase/get_pokemons_usecase.dart'
    as _i63;
import 'package:meal_mate/features/upload/data/datasource/iupload_remote.dart'
    as _i110;
import 'package:meal_mate/features/upload/domain/repository/iupload_repository.dart'
    as _i895;
import 'package:meal_mate/features/upload/domain/usecase/upload_file_usecase.dart'
    as _i279;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final sharedPreferencesModule = _$SharedPreferencesModule();
    final loggerModule = _$LoggerModule();
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => sharedPreferencesModule.prefs,
      preResolve: true,
    );
    gh.lazySingleton<_i165.NavigationService>(() => _i165.NavigationService());
    gh.lazySingleton<_i771.NavigationRoute>(() => _i771.NavigationRoute());
    gh.lazySingleton<_i1039.HttpClient>(() => _i1039.HttpClient());
    gh.lazySingleton<_i974.Logger>(() => loggerModule.logger);
    gh.singleton<_i567.IMoreRemoteSource>(() => _i567.MoreRemoteSource());
    gh.factory<_i786.IAccountRemoteSource>(() => _i786.AccountRemoteSource());
    gh.factory<_i695.IAccountRepository>(
        () => _i695.AccountRepository(gh<_i786.IAccountRemoteSource>()));
    gh.singleton<_i692.INotificationRemoteSource>(
        () => _i692.NotificationRemoteSource());
    gh.factory<_i493.IPokemonRemoteSource>(() => _i949.PokemonRemoteSource());
    gh.singleton<_i110.IUploadRemoteSource>(() => _i110.UploadRemoteSource());
    gh.factory<_i406.IHomeRemoteSource>(() => _i406.HomeRemoteSource());
    gh.singleton<_i895.IUploadRepository>(
        () => _i895.UploadRepository(gh<_i110.IUploadRemoteSource>()));
    gh.factory<_i334.IPokemonRepository>(
        () => _i981.PokemonRepository(gh<_i493.IPokemonRemoteSource>()));
    gh.factory<_i55.LoginUseCase>(
        () => _i55.LoginUseCase(gh<_i695.IAccountRepository>()));
    gh.factory<_i827.RegisterUseCase>(
        () => _i827.RegisterUseCase(gh<_i695.IAccountRepository>()));
    gh.factory<_i607.IHomeRepository>(
        () => _i607.HomeRepository(gh<_i406.IHomeRemoteSource>()));
    gh.singleton<_i750.INotificationRepository>(() =>
        _i750.NotificationRepository(gh<_i692.INotificationRemoteSource>()));
    gh.singleton<_i310.IMoreRepository>(
        () => _i310.MoreRepository(gh<_i567.IMoreRemoteSource>()));
    gh.factory<_i63.GetPokemonsUseCase>(
        () => _i63.GetPokemonsUseCase(gh<_i334.IPokemonRepository>()));
    gh.factory<_i237.CommentsUseCase>(
        () => _i237.CommentsUseCase(gh<_i607.IHomeRepository>()));
    gh.factory<_i666.GetPeopleUseCase>(
        () => _i666.GetPeopleUseCase(gh<_i607.IHomeRepository>()));
    gh.factory<_i277.TestFailureUseCase>(
        () => _i277.TestFailureUseCase(gh<_i607.IHomeRepository>()));
    gh.factory<_i654.TestSuccessUseCase>(
        () => _i654.TestSuccessUseCase(gh<_i607.IHomeRepository>()));
    gh.factory<_i313.TestValidatorUseCase>(
        () => _i313.TestValidatorUseCase(gh<_i607.IHomeRepository>()));
    gh.singleton<_i869.CheckUpdateAppUsecase>(
        () => _i869.CheckUpdateAppUsecase(gh<_i310.IMoreRepository>()));
    gh.factory<_i247.ReportProblemUsecase>(
        () => _i247.ReportProblemUsecase(gh<_i310.IMoreRepository>()));
    gh.singleton<_i593.AddOrUpdateFirebaseTokenUsecase>(() =>
        _i593.AddOrUpdateFirebaseTokenUsecase(
            gh<_i750.INotificationRepository>()));
    gh.singleton<_i477.ChangeNotificationStatusUsecase>(() =>
        _i477.ChangeNotificationStatusUsecase(
            gh<_i750.INotificationRepository>()));
    gh.singleton<_i782.GetNotificationsUsecase>(() =>
        _i782.GetNotificationsUsecase(gh<_i750.INotificationRepository>()));
    gh.singleton<_i279.UploadFileUsecase>(
        () => _i279.UploadFileUsecase(gh<_i895.IUploadRepository>()));
    return this;
  }
}

class _$SharedPreferencesModule extends _i142.SharedPreferencesModule {}

class _$LoggerModule extends _i258.LoggerModule {}
