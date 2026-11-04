import 'package:flutter/foundation.dart';
import 'package:bechdu_partner/data/service/api_service.dart';
import 'package:bechdu_partner/domain/core/api_endpoints/api_endpoints.dart';
import 'package:bechdu_partner/domain/core/failure/failute.dart';
import 'package:bechdu_partner/domain/model/analytics/analytics_response_model.dart';
import 'package:bechdu_partner/domain/repository/service/analytics_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AnalyticsRepo)
@injectable
class AnalyticsService implements AnalyticsRepo {
  final ApiService _apiService;

  AnalyticsService(this._apiService);

  @override
  Future<Either<Failure, AnalyticsResponseModel>> getPartnerAnalytics({
    required String range,
    String? startDate,
    String? endDate,
    String? executivePhone,
  }) async {
    try {
      debugPrint('ANALYTICS SERVICE CALLED');

      debugPrint(
        'REQUESTING: ${ApiEndPoints.baseUrl}${ApiEndPoints.getPartnerAnalytics}',
      );

      debugPrint('QUERY PARAMETERS: range=$range');

      final response = await _apiService.get(
        ApiEndPoints.getPartnerAnalytics,
        queryParameters: {
          'range': range,
          if (startDate != null) 'startDate': startDate,
          if (endDate != null) 'endDate': endDate,
          if (executivePhone != null) 'executivePhone': executivePhone,
        },
      );

      debugPrint('RAW ANALYTICS API RESPONSE: ${response.data}');

      return Right(
        AnalyticsResponseModel.fromJson(
          response.data as Map<String, dynamic>,
        ),
      );
    } on DioException catch (e) {
      debugPrint('========== ANALYTICS API ERROR ==========');
      debugPrint('URL: ${e.requestOptions.uri}');
      debugPrint('STATUS: ${e.response?.statusCode}');
      debugPrint('RESPONSE: ${e.response?.data}');
      debugPrint('ERROR TYPE: ${e.type}');
      debugPrint('ERROR MESSAGE: ${e.message}');
      debugPrint('========================================');

      return Left(
        Failure(message: e.message ?? 'Failed to load analytics'),
      );
    } catch (e, stackTrace) {
      debugPrint('========== ANALYTICS OTHER ERROR ==========');
      debugPrint('ERROR: $e');
      debugPrint('STACK TRACE: $stackTrace');
      debugPrint('==========================================');

      return Left(
        Failure(message: 'Failed to load analytics'),
      );
    }
  }
}
