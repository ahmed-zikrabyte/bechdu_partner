import 'package:bechdu_partner/domain/core/failure/failute.dart';
import 'package:bechdu_partner/domain/model/analytics/analytics_response_model.dart';
import 'package:dartz/dartz.dart';

abstract class AnalyticsRepo {
  Future<Either<Failure, AnalyticsResponseModel>> getPartnerAnalytics({
    required String range,
    String? startDate,
    String? endDate,
    String? executivePhone,
  });
}
