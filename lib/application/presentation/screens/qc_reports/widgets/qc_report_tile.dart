import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/domain/model/qc/qc_report_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class QcReportListTile extends StatelessWidget {
  final QcReport report;
  final VoidCallback? onTap;

  const QcReportListTile({super.key, required this.report, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      decoration: BoxDecoration(
        color: kWhite,
        borderRadius: kRadius10,
        boxShadow: [
          BoxShadow(
            color: kBlack.withOpacity(0.05),
            offset: const Offset(0, 2),
            blurRadius: 10,
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: kRadius10,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: kBluePrimary.withOpacity(0.1),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.picture_as_pdf, color: kBluePrimary),
                ),
                kWidth10,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        report.userName ?? 'Unknown User',
                        style: textHeadBold1.copyWith(fontSize: 16),
                      ),
                      kHeight5,
                      Text(
                        "${report.deviceName ?? 'Device'} - ${report.storage ?? 'Storage'}",
                        style: textHeadRegular1.copyWith(
                            color: kGreyLight, fontSize: 13),
                      ),
                      if (report.createdAt != null)
                        Text(
                          DateFormat('dd MMM yyyy, hh:mm a')
                              .format(report.createdAt!),
                          style: textHeadRegular1.copyWith(
                              color: kGreyLight, fontSize: 11),
                        ),
                    ],
                  ),
                ),
                const Icon(Icons.arrow_forward_ios,
                    size: 14, color: kGreyLight),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
