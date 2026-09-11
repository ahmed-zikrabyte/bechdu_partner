class IvrResponseModel {
  final bool success;
  final String message;

  IvrResponseModel({required this.success, required this.message});

  factory IvrResponseModel.fromJson(Map<String, dynamic> json) {
    return IvrResponseModel(
      success: json['success'] as bool? ?? false,
      message: json['message'] as String? ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'success': success,
      'message': message,
    };
  }
}
