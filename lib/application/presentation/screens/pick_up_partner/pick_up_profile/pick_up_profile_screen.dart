import 'package:bechdu_partner/application/business_logic/pickup_partner/pickup_partner_bloc.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/application/presentation/utils/shimmer/shimmer_loader.dart';
import 'package:bechdu_partner/data/feature/url_launcher_service.dart';
import 'package:bechdu_partner/domain/model/pickup_partner/get_pickup_partner_response_model/pick_up_person.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScreenPickUpPartnerProfile extends StatelessWidget {
  const ScreenPickUpPartnerProfile({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PickupPartnerBloc, PickupPartnerState>(
      builder: (context, state) {
        final PickUpPerson pickUpPerson = state.pickUpPersons![index];
        return Scaffold(
          appBar: AppBar(
              title: Text(pickUpPerson.name ?? '----', style: textHeadBoldBig2),
              actions: [
                PopupMenuButton(
                  color: kWhite,
                  icon: const Icon(
                    Icons.more_vert_rounded,
                    color: kGreyLight,
                  ),
                  itemBuilder: (context) => ([
                    PopupMenuItem(
                      onTap: () {
                        pickUpPerson.status == 'active'
                            ? context.read<PickupPartnerBloc>().add(
                                PickupPartnerEvent.blocPickupPartners(
                                    id: pickUpPerson.id!))
                            : context.read<PickupPartnerBloc>().add(
                                PickupPartnerEvent.unBlocPickupPartners(
                                    id: pickUpPerson.id!));
                      },
                      child: Text(pickUpPerson.status == 'active'
                          ? 'Block'
                          : 'UnBlock'),
                    )
                  ]),
                ),
                kWidth20
              ]),
          body: state.isLoading
              ? Column(
                  children: [
                    SizedBox(
                      width: sWidth * 0.42,
                      child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(100)),
                        child: ShimmerLoader(
                            itemCount: 1,
                            height: sWidth * 0.42,
                            width: sWidth * 0.42),
                      ),
                    ),
                    kHeight40,
                    ShimmerLoader(itemCount: 1, height: 60, width: sWidth),
                  ],
                )
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: sWidth * 0.21,
                      backgroundColor: kGreenPrimary,
                      child: CircleAvatar(
                        radius: sWidth * 0.20,
                        backgroundColor: kBluePrimary,
                        child: Text(
                          pickUpPerson.name != null
                              ? pickUpPerson.name!.substring(0, 2).toUpperCase()
                              : 'BD',
                          style: textHeadBoldBig2.copyWith(
                              color: kWhite, fontSize: sWidth * 0.20),
                        ),
                      ),
                    ),
                    kHeight10,
                    Text(
                      pickUpPerson.name ?? '-----',
                      style: textHeadMedium1.copyWith(
                          fontSize: sWidth * 0.05, color: kGreyDark),
                    ),
                    kHeight20,
                    ColoredBox(
                      color: kGreyLight.withValues(alpha: 0.2),
                      child: Column(
                        children: [
                          ListTile(
                            leading: kWidth10,
                            title: const Text('Mobile'),
                            subtitle:
                                Text('+91 ${pickUpPerson.phone ?? '------'}'),
                            titleTextStyle: textHeadMedium1.copyWith(
                                fontWeight: FontWeight.w600),
                            subtitleTextStyle:
                                textHeadMedium1.copyWith(color: kGreyLight),
                            trailing: Wrap(
                              children: [
                                CircleIconTrailingProfile(
                                    icon: Icons.phone,
                                    onTap: () {
                                      OpenLauncherFeature.launchPhone(
                                          phone: pickUpPerson.phone ?? '');
                                    }),
                                kWidth20
                              ],
                            ),
                          ),
                          // ListTile(
                          //   leading: kWidth10,
                          //   title: const Text('Email'),
                          //   subtitle: const Text('asamoahgodfred42@gmail.com'),
                          //   titleTextStyle:
                          //       textHeadMedium1.copyWith(fontWeight: FontWeight.w600),
                          //   subtitleTextStyle:
                          //       textHeadMedium1.copyWith(color: kGreyLight),
                          //   trailing: Wrap(
                          //     children: [
                          //       CircleIconTrailingProfile(icon: Icons.mail, onTap: () {}),
                          //       kWidth20
                          //     ],
                          //   ),
                          // ),
                          // ListTile(
                          //   leading: kWidth10,
                          //   title: Text('Address'),
                          //   subtitle: const Text('#23, jayanagar 9th block, bangalore.'),
                          //   titleTextStyle:
                          //       textHeadMedium1.copyWith(fontWeight: FontWeight.w600),
                          //   subtitleTextStyle:
                          //       textHeadMedium1.copyWith(color: kGreyLight),
                          // ),
                        ],
                      ),
                    ),
                  ],
                ),
        );
      },
    );
  }
}

class CircleIconTrailingProfile extends StatelessWidget {
  const CircleIconTrailingProfile({
    super.key,
    required this.icon,
    required this.onTap,
  });

  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Material(
        elevation: 2,
        borderRadius: kRadius50,
        child: CircleAvatar(
          backgroundColor: kWhite,
          child: Icon(icon, color: kGreyDark),
        ),
      ),
    );
  }
}
