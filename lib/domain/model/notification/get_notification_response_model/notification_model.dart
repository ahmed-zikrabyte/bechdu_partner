import 'package:json_annotation/json_annotation.dart';

part 'notification_model.g.dart';

@JsonSerializable()
class NotificationModel {
  String? type;
  String? title;
  String? body;
  @JsonKey(name: 'orderID')
  String? orderId;
  @JsonKey(name: '_id')
  String? id;
  DateTime? timestamp;
  bool? status;
  DateTime? validTill;
  DateTime? startDate;

  NotificationModel({
    this.type,
    this.title,
    this.body,
    this.orderId,
    this.id,
    this.timestamp,
    this.status,
    this.validTill,
    this.startDate,
  });

  NotificationModel copyWith({
    String? type,
    String? title,
    String? body,
    String? orderId,
    String? id,
    DateTime? timestamp,
    bool? status,
    DateTime? validTill,
    DateTime? startDate,
  }) {
    return NotificationModel(
      type: type ?? this.type,
      title: title ?? this.title,
      body: body ?? this.body,
      orderId: orderId ?? this.orderId,
      id: id ?? this.id,
      timestamp: timestamp ?? this.timestamp,
      status: status ?? this.status,
      validTill: validTill ?? this.validTill,
      startDate: startDate ?? this.startDate,
    );
  }

  factory NotificationModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationModelFromJson(json);

  Map<String, dynamic> toJson() => _$NotificationModelToJson(this);
}
