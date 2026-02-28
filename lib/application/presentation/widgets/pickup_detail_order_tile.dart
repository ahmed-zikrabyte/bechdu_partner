import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/application/presentation/widgets/custom_blur_maker.dart';
import 'package:bechdu_partner/data/feature/url_launcher_service.dart';
import 'package:flutter/material.dart';

class PickUpDetailOrderTile extends StatelessWidget {
  final bool isBlurred;
  final bool isUser;
  final String name;
  final String address;
  final String phone;
  final String? addPhone;
  final String dateTime;

  const PickUpDetailOrderTile({
    super.key,
    this.isBlurred = false,
    required this.name,
    required this.address,
    required this.phone,
    this.addPhone,
    required this.dateTime,
    required this.isUser,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
      child: Material(
        elevation: 5,
        borderRadius: kRadius5,
        child: ClipRRect(
          borderRadius: kRadius10,
          child: ColoredBox(
            color: kWhite,
            child: Column(children: [
              kHeight10,
              Text('Pickup Details', style: textHeadBoldBig),
              kHeight10,
              ListTile(
                leading: const Icon(
                  Icons.person_2_outlined,
                  color: kGreenPrimary,
                ),
                title: BlurMaker(
                  show: isBlurred,
                  child: Wrap(
                    children: [
                      Text(
                          isUser
                              ? 'Device Owner  '
                              : name == ''
                                  ? 'Pickup ( Not Assigned )'
                                  : 'Pickup Partner  ',
                          style: textHeadRegular1),
                      Text(name, style: textHeadBold1),
                    ],
                  ),
                ),
                trailing: isBlurred
                    ? null
                    : _circleIconMaker(
                        icon: iconPhone,
                        onTap: () {
                          if (addPhone != null && addPhone!.isNotEmpty) {
                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                shape: RoundedRectangleBorder(
                                    borderRadius: kRadius15),
                                title: Text('Select Phone Number',
                                    style: textHeadBoldBig,
                                    textAlign: TextAlign.center),
                                content: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: kGreenPrimary,
                                        foregroundColor: kWhite,
                                        minimumSize:
                                            const Size(double.infinity, 45),
                                        shape: RoundedRectangleBorder(
                                            borderRadius: kRadius10),
                                      ),
                                      onPressed: () {
                                        Navigator.pop(context);
                                        OpenLauncherFeature.launchPhone(
                                            phone: phone);
                                      },
                                      child: const Text('Primary Number'),
                                    ),
                                    kHeight10,
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: kGreenPrimary,
                                        foregroundColor: kWhite,
                                        minimumSize:
                                            const Size(double.infinity, 45),
                                        shape: RoundedRectangleBorder(
                                            borderRadius: kRadius10),
                                      ),
                                      onPressed: () {
                                        Navigator.pop(context);
                                        OpenLauncherFeature.launchPhone(
                                            phone: addPhone!);
                                      },
                                      child: const Text('Alternative Number'),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          } else {
                            OpenLauncherFeature.launchPhone(phone: phone);
                          }
                        },
                      ),
              ),
              ListTile(
                leading: SizedBox(
                    height: 25, width: 25, child: Image.asset(iconPickHand)),
                title: BlurMaker(
                    show: isBlurred,
                    child: Text('Pickup Location ', style: textHeadRegular1)),
                subtitle: BlurMaker(
                  show: isBlurred,
                  child: Text(address, style: textHeadBold1),
                ),
                trailing: isBlurred
                    ? kEmpty
                    : _circleIconMaker(
                        icon: iconLocation,
                        // quarterTurns: 1,
                        onTap: () {
                          OpenLauncherFeature.launchMap(
                              address: address, context: context);
                        },
                      ),
              ),
              ListTile(
                leading: const Icon(
                  Icons.alarm_rounded,
                  color: kGreenPrimary,
                ),
                title: Text('Pickup Time', style: textHeadRegular1),
                subtitle: Text(dateTime, style: textHeadBold1),
              )
            ]),
          ),
        ),
      ),
    );
  }

  Widget _circleIconMaker({required String icon, VoidCallback? onTap}) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: sWidth * 0.10,
        height: sWidth * 0.10,
        decoration: BoxDecoration(
          color: kGreyLight.withOpacity(0.3),
          borderRadius: BorderRadius.circular(100),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Image.asset(icon),
        ),
      ),
    );
  }
}
