import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/data/feature/url_launcher_service.dart';
import 'package:flutter/material.dart';

class SupportDetails extends StatelessWidget {
  const SupportDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Support Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Broangle Innovation Pvt Ltd '),
            const Text('CIN. U47740UP2025PTC224170 '),
            kHeight10,
            Text(
                "Address : Business Square, 601 A, Sanjay Palace, Sanjay Place, Civil Lines, Agra, Uttar Pradesh 282002"),
            // const Text(
            //     'Registered Address EWS P-50 Tajnagri Phase 2 TajGanj Agra-282001 (U.P.)'),
            kHeight10,
            // const Text(
            //     'Communication Address:- Rawat Market Near SBI ATM Rajpur Chungi Shamshabad Road'),
            // const Text('Agra-282001(U.P.)'),
            kHeight10,
            GestureDetector(
                onTap: () {
                  OpenLauncherFeature.launchEmail(email: 'info@bechdu.in');
                },
                child: const Row(
                  children: [
                    Text('Email : '),
                    Text(
                      'info@bechdu.in',
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                  ],
                )),
            GestureDetector(
                onTap: () {
                  OpenLauncherFeature.launchPhone(phone: '+91 70174 54520');
                },
                child: const Row(
                  children: [
                    Text('Phone : '),
                    Text(
                      '+91 70174 54520',
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
