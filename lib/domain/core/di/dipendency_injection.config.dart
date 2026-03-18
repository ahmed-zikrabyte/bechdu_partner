// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:bechdu_partner/application/business_logic/auth/auth_bloc.dart'
    as _i73;
import 'package:bechdu_partner/application/business_logic/notification/notification_bloc.dart'
    as _i955;
import 'package:bechdu_partner/application/business_logic/order/orders/orders_bloc.dart'
    as _i355;
import 'package:bechdu_partner/application/business_logic/order/requote/requote_bloc.dart'
    as _i511;
import 'package:bechdu_partner/application/business_logic/pickup_partner/pickup_partner_bloc.dart'
    as _i113;
import 'package:bechdu_partner/application/business_logic/points/points_bloc.dart'
    as _i268;
import 'package:bechdu_partner/application/business_logic/qc/qc_bloc.dart'
    as _i1058;
import 'package:bechdu_partner/application/business_logic/role/role_bloc.dart'
    as _i542;
import 'package:bechdu_partner/application/business_logic/transcation/transcation_bloc.dart'
    as _i424;
import 'package:bechdu_partner/data/feature/image_picker_service.dart' as _i412;
import 'package:bechdu_partner/data/feature/pdf_buffer.dart' as _i208;
import 'package:bechdu_partner/data/service/api_service.dart' as _i363;
import 'package:bechdu_partner/data/service/auth/auth_service.dart' as _i54;
import 'package:bechdu_partner/data/service/notification/notification.dart'
    as _i800;
import 'package:bechdu_partner/data/service/order/order_service.dart' as _i13;
import 'package:bechdu_partner/data/service/pickup_partner/pickup_partner.dart'
    as _i597;
import 'package:bechdu_partner/data/service/points/points_service.dart'
    as _i208;
import 'package:bechdu_partner/data/service/requote/requote_service.dart'
    as _i500;
import 'package:bechdu_partner/data/service/transcation/transcation_service.dart'
    as _i658;
import 'package:bechdu_partner/domain/core/dio_module/dio_module.dart' as _i821;
import 'package:bechdu_partner/domain/repository/service/auth_repo.dart'
    as _i452;
import 'package:bechdu_partner/domain/repository/service/notification_repo.dart'
    as _i933;
import 'package:bechdu_partner/domain/repository/service/order_repo.dart'
    as _i632;
import 'package:bechdu_partner/domain/repository/service/pickup_partner_repo.dart'
    as _i887;
import 'package:bechdu_partner/domain/repository/service/points_repo.dart'
    as _i241;
import 'package:bechdu_partner/domain/repository/service/requote_repo.dart'
    as _i0;
import 'package:bechdu_partner/domain/repository/service/transcations_repo.dart'
    as _i254;
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final dioModule = _$DioModule();
    gh.factory<_i542.RoleBloc>(() => _i542.RoleBloc());
    gh.factory<_i412.ImagePickerService>(() => _i412.ImagePickerService());
    gh.factory<_i208.InvoiceMaker>(() => _i208.InvoiceMaker());
    gh.lazySingleton<_i361.Dio>(() => dioModule.dioInstance);
    gh.factory<_i363.ApiService>(() => _i363.ApiService(gh<_i361.Dio>()));
    gh.lazySingleton<_i452.AuthRepo>(
        () => _i54.AuthService(gh<_i363.ApiService>()));
    gh.lazySingleton<_i254.TranscationsRepo>(
        () => _i658.TranscationService(gh<_i363.ApiService>()));
    gh.lazySingleton<_i0.RequoteRepo>(
        () => _i500.RequoteService(gh<_i363.ApiService>()));
    gh.factory<_i424.TranscationBloc>(() => _i424.TranscationBloc(
          gh<_i254.TranscationsRepo>(),
          gh<_i208.InvoiceMaker>(),
          gh<_i412.ImagePickerService>(),
        ));
    gh.lazySingleton<_i887.PickupPartnerRepo>(
        () => _i597.PickupPartnerService(gh<_i363.ApiService>()));
    gh.lazySingleton<_i632.OrderRepo>(
        () => _i13.OrderService(gh<_i363.ApiService>()));
    gh.lazySingleton<_i241.PointsRepo>(
        () => _i208.PointsService(gh<_i363.ApiService>()));
    gh.factory<_i73.AuthBloc>(() => _i73.AuthBloc(gh<_i452.AuthRepo>()));
    gh.lazySingleton<_i933.NotificatonRepo>(
        () => _i800.NotificationService(gh<_i363.ApiService>()));
    gh.factory<_i511.RequoteBloc>(
        () => _i511.RequoteBloc(gh<_i0.RequoteRepo>()));
    gh.factory<_i1058.QcBloc>(() => _i1058.QcBloc(gh<_i632.OrderRepo>()));
    gh.factory<_i113.PickupPartnerBloc>(
        () => _i113.PickupPartnerBloc(gh<_i887.PickupPartnerRepo>()));
    gh.factory<_i355.OrdersBloc>(() => _i355.OrdersBloc(
          gh<_i632.OrderRepo>(),
          gh<_i412.ImagePickerService>(),
        ));
    gh.factory<_i268.PointsBloc>(
        () => _i268.PointsBloc(gh<_i241.PointsRepo>()));
    gh.factory<_i955.NotificationBloc>(
        () => _i955.NotificationBloc(gh<_i933.NotificatonRepo>()));
    return this;
  }
}

class _$DioModule extends _i821.DioModule {}
