import 'package:bechdu_partner/application/business_logic/auth/auth_bloc.dart';
import 'package:bechdu_partner/application/business_logic/order/orders/orders_bloc.dart';
import 'package:bechdu_partner/application/business_logic/order/requote/requote_bloc.dart';
import 'package:bechdu_partner/application/business_logic/pickup_partner/pickup_partner_bloc.dart';
import 'package:bechdu_partner/application/business_logic/points/points_bloc.dart';
import 'package:bechdu_partner/application/business_logic/transcation/transcation_bloc.dart';
import 'package:bechdu_partner/application/presentation/routes/routes.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/application/presentation/utils/dialoge/dialoge.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScreenProfile extends StatelessWidget {
  const ScreenProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile', style: textHeadBoldBig2),
        // actions: [
        //   IconButton(
        //       onPressed: () {
        //         context.read<AuthBloc>().add(const AuthEvent.logOut());
        //         Navigator.pushNamedAndRemoveUntil(
        //             context, Routes.signInPage, (route) => false);
        //       },
        //       icon: const Icon(Icons.logout)),
        //   kWidth20
        // ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: BlocBuilder<PickupPartnerBloc, PickupPartnerState>(
            builder: (context, state) {
              return Column(
                children: [
                  CircleAvatar(
                    radius: sWidth * 0.16,
                    backgroundColor: kGreenPrimary,
                    child: CircleAvatar(
                      radius: sWidth * 0.15,
                      backgroundColor: kBluePrimary,
                      child: Text(
                        state.partnerProfile?.name
                                ?.substring(0, 2)
                                .toUpperCase() ??
                            'BD',
                        style: textHeadBoldBig2.copyWith(
                            color: kWhite, fontSize: sWidth * 0.15),
                      ),
                    ),
                  ),
                  kHeight40,
                  UserDetailTile(
                      controller: TextEditingController(),
                      headline: 'Partner Unique ID',
                      text: state.partnerProfile?.partnerId ?? ''),
                  UserDetailTile(
                      controller: TextEditingController(),
                      headline: 'Username',
                      text: state.partnerProfile?.name ?? ''),
                  partner
                      ? UserDetailTile(
                          controller: TextEditingController(),
                          headline: 'Email',
                          text: state.partnerProfile?.email ?? '')
                      : kEmpty,
                  UserDetailTile(
                      controller: TextEditingController(),
                      headline: 'Mobile Number',
                      text: state.partnerProfile?.phone ?? ''),
                  // const SizedBox(height: 100),
                  // kHeight10,
                  ListTile(
                    trailing: const Icon(Icons.logout, color: kBlack),
                    title: Text('Log-Out', style: textHeadBoldBig),
                    onTap: () {
                      showCustomDialoge(
                          context: context,
                          title: 'Are you sure you want to logout ?',
                          buttonText: 'Log Out',
                          onTap: () {
                            context
                                .read<AuthBloc>()
                                .add(const AuthEvent.reset());
                            context
                                .read<OrdersBloc>()
                                .add(const OrdersEvent.reset());
                            context
                                .read<RequoteBloc>()
                                .add(const RequoteEvent.reset());
                            context
                                .read<PointsBloc>()
                                .add(const PointsEvent.reset());
                            context
                                .read<TranscationBloc>()
                                .add(const TranscationEvent.reset());
                            context
                                .read<PickupPartnerBloc>()
                                .add(const PickupPartnerEvent.reset());
                            context
                                .read<AuthBloc>()
                                .add(const AuthEvent.logOut());
                            Navigator.pushNamedAndRemoveUntil(
                                context, Routes.signInPage, (route) => false);
                          });
                    },
                  ),
                  const Divider(color: kBlack),
                  // AuthCustomButtom(
                  //     onTap: () {},
                  //     text: 'Save',
                  //     backgroundColor: kGreenPrimary),
                  kHeight50
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

class UserDetailTile extends StatefulWidget {
  const UserDetailTile(
      {super.key,
      required this.headline,
      required this.text,
      this.onTap,
      required this.controller});

  final String headline;
  final String text;
  final VoidCallback? onTap;
  final TextEditingController controller;

  @override
  State<UserDetailTile> createState() => _UserDetailTileState();
}

class _UserDetailTileState extends State<UserDetailTile> {
  bool showEdit = false;

  @override
  void initState() {
    widget.controller.text = widget.text;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.headline,
            style: textHeadMedium1.copyWith(color: kGreyLight)),
        kHeight10,
        showEdit
            ? TextField(
                controller: widget.controller,
                style: textHeadBoldBig,
                decoration: const InputDecoration(border: InputBorder.none),
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(' ${widget.text}', style: textHeadBoldBig),
                  // InkWell(
                  //   onTap: () {
                  //     setState(() {
                  //       showEdit = !showEdit;
                  //     });
                  //     if (widget.onTap != null) {
                  //       widget.onTap!();
                  //     }
                  //   },
                  //   child: Text(
                  //     'Change  ',
                  //     style: textHeadRegular1.copyWith(
                  //         color: kBlue, decoration: TextDecoration.underline),
                  //   ),
                  // ),
                ],
              ),
        const Divider(color: kBlack),
        kHeight20,
      ],
    );
  }
}
