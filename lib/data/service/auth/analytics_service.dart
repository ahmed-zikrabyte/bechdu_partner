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
      final queryParameters = <String, dynamic>{
        'range': range,
      };

      if (range == 'custom') {
        if (startDate == null || endDate == null) {
          return Left(
            Failure(message: 'Start date and end date are required'),
          );
        }

        queryParameters['startDate'] = startDate;
        queryParameters['endDate'] = endDate;
      }

      if (executivePhone != null &&
          executivePhone.isNotEmpty &&
          executivePhone != 'all') {
        queryParameters['executivePhone'] = executivePhone;
      }

      debugPrint('ANALYTICS API REQUEST');
      debugPrint('URL: ${ApiEndPoints.getPartnerAnalytics}');
      debugPrint('PARAMETERS: $queryParameters');

      final response = await _apiService.get(
        ApiEndPoints.getPartnerAnalytics,
        queryParameters: queryParameters,
      );

      debugPrint('ANALYTICS API STATUS: ${response.statusCode}');
      debugPrint('ANALYTICS API RESPONSE: ${response.data}');

      return Right(
        AnalyticsResponseModel.fromJson(
          Map<String, dynamic>.from(response.data),
        ),
      );
    } on DioException catch (e) {
      debugPrint('ANALYTICS API ERROR: ${e.response?.data}');

      return Left(
        Failure(message: e.message ?? 'Failed to load analytics'),
      );
    } catch (e, stackTrace) {
      debugPrint('ANALYTICS ERROR: $e');
      debugPrint('STACK TRACE: $stackTrace');

      return Left(
        Failure(message: 'Failed to load analytics'),
      );
    }
  }
}
