import 'package:bechdu_partner/application/business_logic/order/orders/orders_bloc.dart';
import 'package:bechdu_partner/application/business_logic/order/requote/requote_bloc.dart';
import 'package:bechdu_partner/application/presentation/screens/auth/widgets/custom_button_auth.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/application/presentation/utils/snackbar/snack_show.dart';
import 'package:bechdu_partner/domain/model/requote/reshedule_model/pick_up_details.dart';
import 'package:bechdu_partner/domain/model/requote/reshedule_model/reshedule_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void showDialogeReschedule(context, String orderId) {
  showDialog(
    context: context,
    builder: (context) => Dialog(
      child: ReshedulePopup(orderId: orderId),
    ),
  );
}

class ReshedulePopup extends StatefulWidget {
  const ReshedulePopup({
    super.key,
    required this.orderId,
  });
  final String orderId;

  @override
  State<ReshedulePopup> createState() => _ReshedulePopupState();
}

class _ReshedulePopupState extends State<ReshedulePopup> {
  String date = 'Date';
  String time = 'Time';
  String message = '';
  String error = '';
  bool dateError = false;
  bool timeError = false;
  bool messageError = false;
  List<String> timeSlots = [];

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: kWhite,
      child: Stack(
        children: [
          SingleChildScrollView(
            child: SizedBox(
              width: sWidth * 0.90,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: BlocConsumer<RequoteBloc, RequoteState>(
                  listenWhen: (previous, current) => previous.resheduleLoading,
                  listener: (context, state) {
                    if (state.message != null) {
                      showSnackBar(
                          context: context,
                          message: state.message!,
                          color: state.hasError ? kRed : kOrangePrimary);
                    }
                    if (state.resheduleDone) {
                      context
                          .read<OrdersBloc>()
                          .add(const OrdersEvent.getPartnerOrders(call: true));
                      Navigator.pop(context);
                      Navigator.pop(context);
                    } else {
                      Navigator.pop(context);
                    }
                  },
                  builder: (context, state) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        kHeight30,
                        Text('RESCHEDULE DETAILS', style: textHeadMedium1),
                        kHeight10,
                        CustomDropDown(
                          showError: dateError,
                          title: date,
                          icon: Icons.calendar_month,
                          items: state.dates,
                          onTap: (value) {
                            date = value ?? 'Date';
                            timeSlots = List.from(state.time ?? []);
                            if (date != 'Date') {
                              final dayPart = date.split(' ').first;
                              final selectedDay = dayPart.padLeft(2, '0');
                              final today =
                                  DateTime.now().day.toString().padLeft(2, '0');
                              if (selectedDay == today) {
                                DateTime currentTime = DateTime.now();
                                timeSlots = timeSlots.where((timeSlot) {
                                  // Handles "10:00 AM - 01:00 PM" or "10 AM - 1 PM"
                                  String startTimePart = timeSlot
                                      .split("-")
                                      .first
                                      .trim()
                                      .toUpperCase();
                                  bool isPM = startTimePart.endsWith('PM');
                                  String hourString = startTimePart
                                      .split(':')
                                      .first
                                      .replaceAll(RegExp(r'[^0-9]'), '');
                                  int startHour = int.parse(hourString);
                                  if (isPM && startHour < 12) startHour += 12;
                                  if (!isPM && startHour == 12) startHour = 0;
                                  return startHour > currentTime.hour;
                                }).toList();
                              }
                            }
                            setState(() {
                              dateError = date == 'Date';
                              time = 'Time';
                              timeError = false;
                            });
                          },
                        ),
                        kHeight10,
                        CustomDropDown(
                          title: time,
                          showError: timeError,
                          icon: Icons.calendar_month,
                          items: timeSlots,
                          onTap: (value) {
                            time = value ?? 'Time';
                            setState(() {
                              timeError = value == 'Time';
                            });
                          },
                        ),
                        kHeight20,
                        Text('Reason For Reschedule', style: textHeadBoldBig),
                        kHeight10,
                        ColoredBox(
                          color: messageError
                              ? kRedLight.withOpacity(0.5)
                              : kGreyLight.withOpacity(0.2),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              onChanged: (value) {
                                setState(() {
                                  message = value;
                                  if (value == '') {
                                    messageError = true;
                                  } else {
                                    messageError = false;
                                  }
                                });
                              },
                              textCapitalization: TextCapitalization.sentences,
                              maxLines: 5,
                              decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Write here'),
                            ),
                          ),
                        ),
                        kHeight10,
                        Text(
                          error,
                          style: const TextStyle(color: kRed),
                        ),
                        kHeight30,
                        state.resheduleLoading
                            ? const Center(
                                child: CircularProgressIndicator(
                                color: kOrangePrimary,
                              ))
                            : AuthCustomButtom(
                                onTap: () {
                                  if (date == 'Date') {
                                    setState(() {
                                      dateError = true;
                                      error = 'Please choose a date';
                                    });
                                  } else if (time == 'Time') {
                                    setState(() {
                                      timeError = true;
                                      error = 'Please choose time slot';
                                    });
                                  } else if (message == '') {
                                    setState(() {
                                      messageError = true;
                                      error =
                                          'Please enter reason for reshedule';
                                    });
                                  } else {
                                    setState(() {
                                      error = '';
                                      messageError = false;
                                    });
                                    context.read<RequoteBloc>().add(
                                        RequoteEvent.resheduleOrder(
                                            resheduleModel: ResheduleModel(
                                                pickUpDetails: PickUpDetails(
                                                    date: date,
                                                    time: time,
                                                    reason: message)),
                                            orderId: widget.orderId));
                                  }
                                },
                                text: 'Reschedule',
                                backgroundColor:
                                    kOrangePrimary.withOpacity(0.9),
                              ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ),
          Positioned(
            top: 5,
            right: 5,
            child: ClipRRect(
              borderRadius: kRadius50,
              child: ColoredBox(
                color: kBluePrimary,
                child: InkWell(
                  onTap: () => Navigator.pop(context),
                  child: const Icon(
                    Icons.close,
                    color: kWhite,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CustomDropDown extends StatefulWidget {
  const CustomDropDown(
      {super.key,
      required this.title,
      required this.icon,
      this.showError = false,
      required this.items,
      required this.onTap});
  final String title;
  final bool showError;
  final IconData icon;
  final List<String> items;
  final Function(String? value) onTap;

  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
        child: DropdownButton(
            hint: Container(
              // height: widget.showError ? sWidth * 0.13 : sWidth * 0.1,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: kRadius10,
                  border: Border.all(
                      color: widget.showError ? kRed : kBlack,
                      width: widget.showError ? 2 : 1)),
              width: widget.showError ? sWidth * 0.55 : sWidth * 0.50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(widget.title, style: textHeadSemiBold1),
                  Icon(
                    widget.icon,
                    color: kBluePrimary,
                  )
                ],
              ),
            ),
            items: widget.items.map<DropdownMenuItem<String>>(
              (String value) {
                return DropdownMenuItem<String>(
                  onTap: () {},
                  value: value,
                  child: Text(
                    value,
                    style: textHeadSemiBold1.copyWith(
                      fontSize: sWidth * 0.04,
                    ),
                  ),
                );
              },
            ).toList(),
            onChanged: widget.onTap));
  }
}
