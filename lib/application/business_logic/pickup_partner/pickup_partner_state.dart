part of 'pickup_partner_bloc.dart';

@freezed
abstract class PickupPartnerState with _$PickupPartnerState {
  const factory PickupPartnerState(
      {required bool isLoading,
      required bool hasError,
      required bool partnerAddingLoader,
      required bool pickupPersonAdded,
      required bool assigningOrderLoader,
      required bool orderAssigned,
      required bool orderDeAssigned,
      required bool popOrderScreen,
      PickUpPerson? selectedPickup,
      List<PickUpPerson>? pickUpPersons,
      PartnerProfile? partnerProfile,
      String? message}) = _Initial;
  factory PickupPartnerState.initial() => const PickupPartnerState(
      isLoading: false,
      hasError: false,
      partnerAddingLoader: false,
      pickupPersonAdded: false,
      orderDeAssigned: false,
      popOrderScreen: false,
      assigningOrderLoader: false,
      orderAssigned: false);
}
