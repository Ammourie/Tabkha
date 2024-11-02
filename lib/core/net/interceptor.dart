import 'package:dio/dio.dart';
import 'package:intl/intl.dart';
import 'package:starter_application/core/common/app_config.dart';
import 'package:starter_application/core/common/local_storage.dart';

import '../constants/app/app_constants.dart';

class AuthInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (LocalStorage.hasToken) {
      final token = LocalStorage.authToken;
      final os = AppConfig().os;
      final appVersion = AppConfig().appVersion;
      if (os != null) options.headers[AppConstants.HEADER_OS] = '$os';
      if (appVersion != null)
        options.headers[AppConstants.HEADER_APP_VERSION] = '$appVersion';
      if (os != null) options.headers[AppConstants.HEADER_AUTH] = '$token';
      if (appVersion != null)
        options.headers[AppConstants.HEADER_APP_VERSION] = '$appVersion';
      if (os != null) options.headers[AppConstants.HEADER_AUTH] = '$token';
      // options.headers[AppConstants.HEADER_AUTH] = '$apiKey';
      options.headers[AppConstants.HEADER_AUTH] = '$token';
    }
    options.headers[AppConstants.HEADER_DEVICE_ID] = AppConfig().deviceId;
    options.headers[AppConstants.HEADER_LANGUAGE] =
        Intl.getCurrentLocale() == AppConstants.LANG_AR
            ? '${Intl.getCurrentLocale()}-sy'
            : Intl.getCurrentLocale() == AppConstants.LANG_EN
                ? '${Intl.getCurrentLocale()}-us'
                : 'ku';

    return super.onRequest(options, handler);
  }
}
