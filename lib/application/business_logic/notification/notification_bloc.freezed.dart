// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NotificationEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is NotificationEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'NotificationEvent()';
  }
}

/// @nodoc
class $NotificationEventCopyWith<$Res> {
  $NotificationEventCopyWith(
      NotificationEvent _, $Res Function(NotificationEvent) __);
}

/// Adds pattern-matching-related methods to [NotificationEvent].
extension NotificationEventPatterns on NotificationEvent {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetNotifications value)? getNotifications,
    TResult Function(GetNotificationsNext value)? getNotificationsNext,
    TResult Function(ResetLength value)? resetLength,
    TResult Function(Sort value)? sort,
    TResult Function(MarkAsRead value)? markAsRead,
    TResult Function(GetOffers value)? getOffers,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case GetNotifications() when getNotifications != null:
        return getNotifications(_that);
      case GetNotificationsNext() when getNotificationsNext != null:
        return getNotificationsNext(_that);
      case ResetLength() when resetLength != null:
        return resetLength(_that);
      case Sort() when sort != null:
        return sort(_that);
      case MarkAsRead() when markAsRead != null:
        return markAsRead(_that);
      case GetOffers() when getOffers != null:
        return getOffers(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetNotifications value) getNotifications,
    required TResult Function(GetNotificationsNext value) getNotificationsNext,
    required TResult Function(ResetLength value) resetLength,
    required TResult Function(Sort value) sort,
    required TResult Function(MarkAsRead value) markAsRead,
    required TResult Function(GetOffers value) getOffers,
  }) {
    final _that = this;
    switch (_that) {
      case GetNotifications():
        return getNotifications(_that);
      case GetNotificationsNext():
        return getNotificationsNext(_that);
      case ResetLength():
        return resetLength(_that);
      case Sort():
        return sort(_that);
      case MarkAsRead():
        return markAsRead(_that);
      case GetOffers():
        return getOffers(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetNotifications value)? getNotifications,
    TResult? Function(GetNotificationsNext value)? getNotificationsNext,
    TResult? Function(ResetLength value)? resetLength,
    TResult? Function(Sort value)? sort,
    TResult? Function(MarkAsRead value)? markAsRead,
    TResult? Function(GetOffers value)? getOffers,
  }) {
    final _that = this;
    switch (_that) {
      case GetNotifications() when getNotifications != null:
        return getNotifications(_that);
      case GetNotificationsNext() when getNotificationsNext != null:
        return getNotificationsNext(_that);
      case ResetLength() when resetLength != null:
        return resetLength(_that);
      case Sort() when sort != null:
        return sort(_that);
      case MarkAsRead() when markAsRead != null:
        return markAsRead(_that);
      case GetOffers() when getOffers != null:
        return getOffers(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool reset)? getNotifications,
    TResult Function()? getNotificationsNext,
    TResult Function()? resetLength,
    TResult Function(int index)? sort,
    TResult Function(String id)? markAsRead,
    TResult Function()? getOffers,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case GetNotifications() when getNotifications != null:
        return getNotifications(_that.reset);
      case GetNotificationsNext() when getNotificationsNext != null:
        return getNotificationsNext();
      case ResetLength() when resetLength != null:
        return resetLength();
      case Sort() when sort != null:
        return sort(_that.index);
      case MarkAsRead() when markAsRead != null:
        return markAsRead(_that.id);
      case GetOffers() when getOffers != null:
        return getOffers();
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool reset) getNotifications,
    required TResult Function() getNotificationsNext,
    required TResult Function() resetLength,
    required TResult Function(int index) sort,
    required TResult Function(String id) markAsRead,
    required TResult Function() getOffers,
  }) {
    final _that = this;
    switch (_that) {
      case GetNotifications():
        return getNotifications(_that.reset);
      case GetNotificationsNext():
        return getNotificationsNext();
      case ResetLength():
        return resetLength();
      case Sort():
        return sort(_that.index);
      case MarkAsRead():
        return markAsRead(_that.id);
      case GetOffers():
        return getOffers();
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool reset)? getNotifications,
    TResult? Function()? getNotificationsNext,
    TResult? Function()? resetLength,
    TResult? Function(int index)? sort,
    TResult? Function(String id)? markAsRead,
    TResult? Function()? getOffers,
  }) {
    final _that = this;
    switch (_that) {
      case GetNotifications() when getNotifications != null:
        return getNotifications(_that.reset);
      case GetNotificationsNext() when getNotificationsNext != null:
        return getNotificationsNext();
      case ResetLength() when resetLength != null:
        return resetLength();
      case Sort() when sort != null:
        return sort(_that.index);
      case MarkAsRead() when markAsRead != null:
        return markAsRead(_that.id);
      case GetOffers() when getOffers != null:
        return getOffers();
      case _:
        return null;
    }
  }
}

/// @nodoc

class GetNotifications implements NotificationEvent {
  const GetNotifications({required this.reset});

  final bool reset;

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetNotificationsCopyWith<GetNotifications> get copyWith =>
      _$GetNotificationsCopyWithImpl<GetNotifications>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetNotifications &&
            (identical(other.reset, reset) || other.reset == reset));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reset);

  @override
  String toString() {
    return 'NotificationEvent.getNotifications(reset: $reset)';
  }
}

/// @nodoc
abstract mixin class $GetNotificationsCopyWith<$Res>
    implements $NotificationEventCopyWith<$Res> {
  factory $GetNotificationsCopyWith(
          GetNotifications value, $Res Function(GetNotifications) _then) =
      _$GetNotificationsCopyWithImpl;
  @useResult
  $Res call({bool reset});
}

/// @nodoc
class _$GetNotificationsCopyWithImpl<$Res>
    implements $GetNotificationsCopyWith<$Res> {
  _$GetNotificationsCopyWithImpl(this._self, this._then);

  final GetNotifications _self;
  final $Res Function(GetNotifications) _then;

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? reset = null,
  }) {
    return _then(GetNotifications(
      reset: null == reset
          ? _self.reset
          : reset // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class GetNotificationsNext implements NotificationEvent {
  const GetNotificationsNext();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetNotificationsNext);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'NotificationEvent.getNotificationsNext()';
  }
}

/// @nodoc

class ResetLength implements NotificationEvent {
  const ResetLength();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ResetLength);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'NotificationEvent.resetLength()';
  }
}

/// @nodoc

class Sort implements NotificationEvent {
  const Sort(this.index);

  final int index;

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SortCopyWith<Sort> get copyWith =>
      _$SortCopyWithImpl<Sort>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Sort &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @override
  String toString() {
    return 'NotificationEvent.sort(index: $index)';
  }
}

/// @nodoc
abstract mixin class $SortCopyWith<$Res>
    implements $NotificationEventCopyWith<$Res> {
  factory $SortCopyWith(Sort value, $Res Function(Sort) _then) =
      _$SortCopyWithImpl;
  @useResult
  $Res call({int index});
}

/// @nodoc
class _$SortCopyWithImpl<$Res> implements $SortCopyWith<$Res> {
  _$SortCopyWithImpl(this._self, this._then);

  final Sort _self;
  final $Res Function(Sort) _then;

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? index = null,
  }) {
    return _then(Sort(
      null == index
          ? _self.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class MarkAsRead implements NotificationEvent {
  const MarkAsRead({required this.id});

  final String id;

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MarkAsReadCopyWith<MarkAsRead> get copyWith =>
      _$MarkAsReadCopyWithImpl<MarkAsRead>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MarkAsRead &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @override
  String toString() {
    return 'NotificationEvent.markAsRead(id: $id)';
  }
}

/// @nodoc
abstract mixin class $MarkAsReadCopyWith<$Res>
    implements $NotificationEventCopyWith<$Res> {
  factory $MarkAsReadCopyWith(
          MarkAsRead value, $Res Function(MarkAsRead) _then) =
      _$MarkAsReadCopyWithImpl;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$MarkAsReadCopyWithImpl<$Res> implements $MarkAsReadCopyWith<$Res> {
  _$MarkAsReadCopyWithImpl(this._self, this._then);

  final MarkAsRead _self;
  final $Res Function(MarkAsRead) _then;

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
  }) {
    return _then(MarkAsRead(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class GetOffers implements NotificationEvent {
  const GetOffers();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetOffers);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'NotificationEvent.getOffers()';
  }
}

/// @nodoc
mixin _$NotificationState {
  bool get isLoading;
  bool get pageLoading;
  bool get hasError;
  bool get offersLoading;
  int? get notiLength;
  int? get totalNotiLength;
  String? get message;
  List<int> get sortIndexs;
  List<NotificationModel>? get notificationList;
  List<NotificationModel>? get offersList;

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NotificationStateCopyWith<NotificationState> get copyWith =>
      _$NotificationStateCopyWithImpl<NotificationState>(
          this as NotificationState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NotificationState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.pageLoading, pageLoading) ||
                other.pageLoading == pageLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.offersLoading, offersLoading) ||
                other.offersLoading == offersLoading) &&
            (identical(other.notiLength, notiLength) ||
                other.notiLength == notiLength) &&
            (identical(other.totalNotiLength, totalNotiLength) ||
                other.totalNotiLength == totalNotiLength) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality()
                .equals(other.sortIndexs, sortIndexs) &&
            const DeepCollectionEquality()
                .equals(other.notificationList, notificationList) &&
            const DeepCollectionEquality()
                .equals(other.offersList, offersList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      pageLoading,
      hasError,
      offersLoading,
      notiLength,
      totalNotiLength,
      message,
      const DeepCollectionEquality().hash(sortIndexs),
      const DeepCollectionEquality().hash(notificationList),
      const DeepCollectionEquality().hash(offersList));

  @override
  String toString() {
    return 'NotificationState(isLoading: $isLoading, pageLoading: $pageLoading, hasError: $hasError, offersLoading: $offersLoading, notiLength: $notiLength, totalNotiLength: $totalNotiLength, message: $message, sortIndexs: $sortIndexs, notificationList: $notificationList, offersList: $offersList)';
  }
}

/// @nodoc
abstract mixin class $NotificationStateCopyWith<$Res> {
  factory $NotificationStateCopyWith(
          NotificationState value, $Res Function(NotificationState) _then) =
      _$NotificationStateCopyWithImpl;
  @useResult
  $Res call(
      {bool isLoading,
      bool pageLoading,
      bool hasError,
      bool offersLoading,
      int? notiLength,
      int? totalNotiLength,
      String? message,
      List<int> sortIndexs,
      List<NotificationModel>? notificationList,
      List<NotificationModel>? offersList});
}

/// @nodoc
class _$NotificationStateCopyWithImpl<$Res>
    implements $NotificationStateCopyWith<$Res> {
  _$NotificationStateCopyWithImpl(this._self, this._then);

  final NotificationState _self;
  final $Res Function(NotificationState) _then;

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? pageLoading = null,
    Object? hasError = null,
    Object? offersLoading = null,
    Object? notiLength = freezed,
    Object? totalNotiLength = freezed,
    Object? message = freezed,
    Object? sortIndexs = null,
    Object? notificationList = freezed,
    Object? offersList = freezed,
  }) {
    return _then(_self.copyWith(
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      pageLoading: null == pageLoading
          ? _self.pageLoading
          : pageLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _self.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      offersLoading: null == offersLoading
          ? _self.offersLoading
          : offersLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      notiLength: freezed == notiLength
          ? _self.notiLength
          : notiLength // ignore: cast_nullable_to_non_nullable
              as int?,
      totalNotiLength: freezed == totalNotiLength
          ? _self.totalNotiLength
          : totalNotiLength // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      sortIndexs: null == sortIndexs
          ? _self.sortIndexs
          : sortIndexs // ignore: cast_nullable_to_non_nullable
              as List<int>,
      notificationList: freezed == notificationList
          ? _self.notificationList
          : notificationList // ignore: cast_nullable_to_non_nullable
              as List<NotificationModel>?,
      offersList: freezed == offersList
          ? _self.offersList
          : offersList // ignore: cast_nullable_to_non_nullable
              as List<NotificationModel>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [NotificationState].
extension NotificationStatePatterns on NotificationState {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Initial value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Initial value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Initial value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Initial() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            bool isLoading,
            bool pageLoading,
            bool hasError,
            bool offersLoading,
            int? notiLength,
            int? totalNotiLength,
            String? message,
            List<int> sortIndexs,
            List<NotificationModel>? notificationList,
            List<NotificationModel>? offersList)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when $default != null:
        return $default(
            _that.isLoading,
            _that.pageLoading,
            _that.hasError,
            _that.offersLoading,
            _that.notiLength,
            _that.totalNotiLength,
            _that.message,
            _that.sortIndexs,
            _that.notificationList,
            _that.offersList);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            bool isLoading,
            bool pageLoading,
            bool hasError,
            bool offersLoading,
            int? notiLength,
            int? totalNotiLength,
            String? message,
            List<int> sortIndexs,
            List<NotificationModel>? notificationList,
            List<NotificationModel>? offersList)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return $default(
            _that.isLoading,
            _that.pageLoading,
            _that.hasError,
            _that.offersLoading,
            _that.notiLength,
            _that.totalNotiLength,
            _that.message,
            _that.sortIndexs,
            _that.notificationList,
            _that.offersList);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            bool isLoading,
            bool pageLoading,
            bool hasError,
            bool offersLoading,
            int? notiLength,
            int? totalNotiLength,
            String? message,
            List<int> sortIndexs,
            List<NotificationModel>? notificationList,
            List<NotificationModel>? offersList)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Initial() when $default != null:
        return $default(
            _that.isLoading,
            _that.pageLoading,
            _that.hasError,
            _that.offersLoading,
            _that.notiLength,
            _that.totalNotiLength,
            _that.message,
            _that.sortIndexs,
            _that.notificationList,
            _that.offersList);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Initial implements NotificationState {
  const _Initial(
      {required this.isLoading,
      required this.pageLoading,
      required this.hasError,
      required this.offersLoading,
      this.notiLength,
      this.totalNotiLength,
      this.message,
      required final List<int> sortIndexs,
      final List<NotificationModel>? notificationList,
      final List<NotificationModel>? offersList})
      : _sortIndexs = sortIndexs,
        _notificationList = notificationList,
        _offersList = offersList;

  @override
  final bool isLoading;
  @override
  final bool pageLoading;
  @override
  final bool hasError;
  @override
  final bool offersLoading;
  @override
  final int? notiLength;
  @override
  final int? totalNotiLength;
  @override
  final String? message;
  final List<int> _sortIndexs;
  @override
  List<int> get sortIndexs {
    if (_sortIndexs is EqualUnmodifiableListView) return _sortIndexs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sortIndexs);
  }

  final List<NotificationModel>? _notificationList;
  @override
  List<NotificationModel>? get notificationList {
    final value = _notificationList;
    if (value == null) return null;
    if (_notificationList is EqualUnmodifiableListView)
      return _notificationList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<NotificationModel>? _offersList;
  @override
  List<NotificationModel>? get offersList {
    final value = _offersList;
    if (value == null) return null;
    if (_offersList is EqualUnmodifiableListView) return _offersList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initial &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.pageLoading, pageLoading) ||
                other.pageLoading == pageLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.offersLoading, offersLoading) ||
                other.offersLoading == offersLoading) &&
            (identical(other.notiLength, notiLength) ||
                other.notiLength == notiLength) &&
            (identical(other.totalNotiLength, totalNotiLength) ||
                other.totalNotiLength == totalNotiLength) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality()
                .equals(other._sortIndexs, _sortIndexs) &&
            const DeepCollectionEquality()
                .equals(other._notificationList, _notificationList) &&
            const DeepCollectionEquality()
                .equals(other._offersList, _offersList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      pageLoading,
      hasError,
      offersLoading,
      notiLength,
      totalNotiLength,
      message,
      const DeepCollectionEquality().hash(_sortIndexs),
      const DeepCollectionEquality().hash(_notificationList),
      const DeepCollectionEquality().hash(_offersList));

  @override
  String toString() {
    return 'NotificationState(isLoading: $isLoading, pageLoading: $pageLoading, hasError: $hasError, offersLoading: $offersLoading, notiLength: $notiLength, totalNotiLength: $totalNotiLength, message: $message, sortIndexs: $sortIndexs, notificationList: $notificationList, offersList: $offersList)';
  }
}

/// @nodoc
abstract mixin class _$InitialCopyWith<$Res>
    implements $NotificationStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) _then) =
      __$InitialCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool pageLoading,
      bool hasError,
      bool offersLoading,
      int? notiLength,
      int? totalNotiLength,
      String? message,
      List<int> sortIndexs,
      List<NotificationModel>? notificationList,
      List<NotificationModel>? offersList});
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(this._self, this._then);

  final _Initial _self;
  final $Res Function(_Initial) _then;

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isLoading = null,
    Object? pageLoading = null,
    Object? hasError = null,
    Object? offersLoading = null,
    Object? notiLength = freezed,
    Object? totalNotiLength = freezed,
    Object? message = freezed,
    Object? sortIndexs = null,
    Object? notificationList = freezed,
    Object? offersList = freezed,
  }) {
    return _then(_Initial(
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      pageLoading: null == pageLoading
          ? _self.pageLoading
          : pageLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _self.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      offersLoading: null == offersLoading
          ? _self.offersLoading
          : offersLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      notiLength: freezed == notiLength
          ? _self.notiLength
          : notiLength // ignore: cast_nullable_to_non_nullable
              as int?,
      totalNotiLength: freezed == totalNotiLength
          ? _self.totalNotiLength
          : totalNotiLength // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      sortIndexs: null == sortIndexs
          ? _self._sortIndexs
          : sortIndexs // ignore: cast_nullable_to_non_nullable
              as List<int>,
      notificationList: freezed == notificationList
          ? _self._notificationList
          : notificationList // ignore: cast_nullable_to_non_nullable
              as List<NotificationModel>?,
      offersList: freezed == offersList
          ? _self._offersList
          : offersList // ignore: cast_nullable_to_non_nullable
              as List<NotificationModel>?,
    ));
  }
}

// dart format on
