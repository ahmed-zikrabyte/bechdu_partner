import 'package:bechdu_partner/application/business_logic/auth/auth_bloc.dart';
import 'package:bechdu_partner/application/presentation/routes/routes.dart';
import 'package:bechdu_partner/application/presentation/utils/animations/ringing_animation.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/application/presentation/utils/dialoge/dialoge.dart';
import 'package:bechdu_partner/data/feature/url_launcher_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScreenSettings extends StatelessWidget {
  const ScreenSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Settings', style: textHeadBoldBig2),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
              child: Column(
            children: [
              kHeight50,
              SizedBox(
                  height: 150.h,
                  child: BellIconAnimation(
                    animate: true,
                    child: Image.asset(
                      iconBechdu,
                    ),
                  )),
              kHeight50,
              const Divider(),
              ListTile(
                leading: const CircleAvatar(
                  backgroundColor: kWhite,
                  child: Icon(Icons.person),
                ),
                title: Text('Profile', style: textHeadRegular2),
                onTap: () => Navigator.pushNamed(context, Routes.profilePage),
              ),
              const Divider(),
              ListTile(
                leading: const CircleAvatar(
                  backgroundColor: kWhite,
                  child: Icon(Icons.privacy_tip),
                ),
                title: Text('Privacy Poicy', style: textHeadRegular2),
                onTap: () {
                  OpenLauncherFeature.launchWebPage(url: privacyPolicy);
                },
              ),
              const Divider(),
              ListTile(
                leading: const CircleAvatar(
                  backgroundColor: kWhite,
                  child: Icon(Icons.terminal_sharp),
                ),
                title: Text('Terms And Conditions', style: textHeadRegular2),
                onTap: () {
                  OpenLauncherFeature.launchWebPage(url: termsAndConditions);
                },
              ),
              const Divider(),
              ListTile(
                leading: const CircleAvatar(
                  backgroundColor: kWhite,
                  child: Icon(Icons.terminal_sharp),
                ),
                title: Text('Support Details', style: textHeadRegular2),
                onTap: () {
                  Navigator.pushNamed(context, Routes.supportDetails);
                },
              ),
              const Divider(),
              // ListTile(
              //   leading: const CircleAvatar(
              //     backgroundColor: kWhite,
              //     child: Icon(Icons.mobile_screen_share_sharp),
              //   ),
              //   title: Text('Share', style: textHeadRegular2),
              // ),
              // const Divider(),
              !partner
                  ? kEmpty
                  : BlocConsumer<AuthBloc, AuthState>(
                      listener: (context, state) {
                        if (state.deteteOtpSend) {
                          Navigator.pushNamed(context, Routes.otpPage,
                              arguments: true);
                        }
                      },
                      builder: (context, state) {
                        return ListTile(
                          onTap: () => showCustomDialoge(
                              context: context,
                              buttonColor: kRedDark,
                              title:
                                  'Are you sure you want to Delete Account ?',
                              buttonText: 'Delete',
                              onTap: () {
                                context
                                    .read<AuthBloc>()
                                    .add(const AuthEvent.deleteAccount());
                              }),
                          leading: state.deleteLoading
                              ? const CircleAvatar(
                                  backgroundColor: kWhite,
                                  child: Center(
                                      child: CircularProgressIndicator(
                                    color: kRed,
                                  )),
                                )
                              : const CircleAvatar(
                                  backgroundColor: kWhite,
                                  child: Icon(Icons.person_off_outlined),
                                ),
                          title:
                              Text('Delete Account', style: textHeadRegular2),
                        );
                      },
                    ),
              !partner ? kEmpty : const Divider(),
              kHeight50,
              Text('version 1.0.9',
                  style: textHeadMedium1.copyWith(color: kGreyLight))
            ],
          )),
        ));
  }
}
