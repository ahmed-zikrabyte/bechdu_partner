import 'package:json_annotation/json_annotation.dart';

part 'epay_model.g.dart';

@JsonSerializable()
class EpayModel {
  int? coins;
  double? price;
  double? gstPrice;
  int? gstPercentage;
  String? action;
  String? paymentId;
  double? totalPrice;
  Map<String, dynamic>? payuResponse;

  EpayModel({
    this.coins,
    this.price,
    this.gstPrice,
    this.gstPercentage,
    this.action,
    this.paymentId,
    this.totalPrice,
    this.payuResponse,
  });

  factory EpayModel.fromJson(Map<String, dynamic> json) {
    return _$EpayModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$EpayModelToJson(this);

  EpayModel copyWith({
    int? coins,
    double? price,
    double? gstPrice,
    int? gstPercentage,
    String? action,
    String? paymentId,
    double? totalPrice,
    Map<String, dynamic>? payuResponse,
  }) {
    return EpayModel(
      coins: coins ?? this.coins,
      price: price ?? this.price,
      gstPrice: gstPrice ?? this.gstPrice,
      gstPercentage: gstPercentage ?? this.gstPercentage,
      action: action ?? this.action,
      paymentId: paymentId ?? this.paymentId,
      totalPrice: totalPrice ?? this.totalPrice,
      payuResponse: payuResponse ?? this.payuResponse,
    );
  }
}
