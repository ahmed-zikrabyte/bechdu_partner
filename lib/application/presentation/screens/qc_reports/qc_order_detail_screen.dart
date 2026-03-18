import 'package:bechdu_partner/application/business_logic/qc/qc_bloc.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

class ScreenQcOrderDetail extends StatelessWidget {
  const ScreenQcOrderDetail({super.key, required this.reportId});

  final String reportId;

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<QcBloc>().add(QcEvent.getQcReportDetails(reportId: reportId));
    });

    return Scaffold(
      backgroundColor: kWhite,
      appBar: AppBar(
        title: Text(
          'Report Details',
          style: textHeadBoldBig2,
        ),
      ),
      body: BlocConsumer<QcBloc, QcState>(
        listener: (context, state) {
          if (state.message == 'Opening report...' && state.qcReportUrl != null) {
            launchUrl(Uri.parse(state.qcReportUrl!), mode: LaunchMode.externalApplication);
          }
        },
        builder: (context, state) {
          if (state.isLoadingDetail) {
            return const Center(child: CircularProgressIndicator(color: kBluePrimary));
          }
          if (state.reportDetail == null) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Failed to load report details'),
                  kHeight10,
                  ElevatedButton(
                    onPressed: () {
                      context.read<QcBloc>().add(QcEvent.getQcReportDetails(reportId: reportId));
                    },
                    child: const Text('Retry'),
                  )
                ],
              ),
            );
          }

          final detail = state.reportDetail!;
          final user = detail.userDetails;
          final report = detail.report;

          return SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // User Info Card
                _buildSectionCard(
                  title: 'Customer Details',
                  icon: Icons.person_outline,
                  children: [
                    _buildInfoRow('Name', user?.name ?? '---'),
                    _buildInfoRow('Phone', user?.phone ?? '---'),
                    _buildInfoRow('Email', user?.email ?? '---'),
                  ],
                ),
                _buildSectionCard(
                  title: 'Device Info',
                  icon: Icons.smartphone_outlined,
                  children: [
                    _buildInfoRow('Device', detail.deviceDetails?.deviceName ?? '---'),
                    _buildInfoRow('Storage', detail.deviceDetails?.storage ?? '---'),
                    _buildInfoRow('IMEI', detail.deviceDetails?.imeiNumber ?? '---'),
                  ],
                ),
                kHeight20,
                
                // Report Info Card
                _buildSectionCard(
                  title: 'Report Metadata',
                  icon: Icons.info_outline,
                  children: [
                    _buildInfoRow('File Name', report?.fileName ?? '---'),
                    if (report?.uploadedAt != null)
                      _buildInfoRow('Upload Date', DateFormat('dd MMM yyyy, hh:mm a').format(report!.uploadedAt!)),
                    _buildInfoRow('Partner ID', report?.partnerAutoId ?? '---'),
                  ],
                ),
                kHeight30,
                
                // Action Buttons Row
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton.icon(
                        onPressed: (state.qcReportUrl == null || state.qcReportUrl!.isEmpty)
                          ? null 
                          : () {
                              launchUrl(Uri.parse(state.qcReportUrl!), mode: LaunchMode.externalApplication);
                            },
                        icon: const Icon(Icons.remove_red_eye_outlined),
                        label: const Text('View Report'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: kBluePrimary,
                          foregroundColor: kWhite,
                          minimumSize: const Size(double.infinity, 50),
                          shape: RoundedRectangleBorder(borderRadius: kRadius10),
                        ),
                      ),
                    ),
                    kWidth10,
                    Expanded(
                      child: ElevatedButton.icon(
                        onPressed: state.isDownloadingReport 
                          ? null 
                          : () {
                              context.read<QcBloc>().add(QcEvent.downloadQcReport(reportId: reportId));
                            },
                        icon: state.isDownloadingReport 
                          ? const SizedBox(
                              height: 20, 
                              width: 20, 
                              child: CircularProgressIndicator(strokeWidth: 2, color: kWhite)
                            )
                          : const Icon(Icons.download),
                        label: Text(state.isDownloadingReport ? '...' : 'Download'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: kGreenPrimary,
                          foregroundColor: kWhite,
                          minimumSize: const Size(double.infinity, 50),
                          shape: RoundedRectangleBorder(borderRadius: kRadius10),
                        ),
                      ),
                    ),
                  ],
                ),
                kHeight20,
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildSectionCard({required String title, required IconData icon, required List<Widget> children}) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: kWhite,
        borderRadius: kRadius10,
        boxShadow: [
          BoxShadow(color: kBlack.withOpacity(0.05), blurRadius: 10, offset: const Offset(0, 2)),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, color: kBluePrimary, size: 20),
              kWidth10,
              Text(title, style: textHeadBold1.copyWith(fontSize: 16, color: kBluePrimary)),
            ],
          ),
          const Divider(height: 25),
          ...children,
        ],
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 100,
            child: Text(label, style: textHeadRegular1.copyWith(color: kGreyLight, fontSize: 13)),
          ),
          Expanded(
            child: Text(value, style: textHeadBold1.copyWith(fontSize: 14)),
          ),
        ],
      ),
    );
  }
}
