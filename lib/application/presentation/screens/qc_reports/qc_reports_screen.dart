import 'package:bechdu_partner/application/business_logic/qc/qc_bloc.dart';
import 'package:bechdu_partner/application/presentation/routes/routes.dart';
import 'package:bechdu_partner/application/presentation/screens/qc_reports/widgets/qc_report_tile.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/application/presentation/utils/shimmer/shimmer_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScreenQcReports extends StatefulWidget {
  const ScreenQcReports({super.key});

  @override
  State<ScreenQcReports> createState() => _ScreenQcReportsState();
}

class _ScreenQcReportsState extends State<ScreenQcReports> {
  final ScrollController controller = ScrollController();
  final TextEditingController searchController = TextEditingController();
  String searchQuery = '';
  
  @override
  void initState() {
    super.initState();
    searchController.addListener(() {
      setState(() {
        searchQuery = searchController.text.toLowerCase();
      });
    });
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<QcBloc>().add(const QcEvent.getQcReports(call: false));
    });
  }

  @override
  void dispose() {
    controller.dispose();
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      appBar: AppBar(
        title: Text(
          'QC Reports History',
          style: textHeadBoldBig2,
        ),
        elevation: 0,
      ),
      body: BlocBuilder<QcBloc, QcState>(builder: (context, state) {
        if (state.isLoading) {
          return const Center(child: CircularProgressIndicator(color: kBluePrimary));
        }
        
        if (state.qcReports != null) {
          final reports = state.qcReports!.where((report) {
            final userMatch = report.userName?.toLowerCase().contains(searchQuery) ?? false;
            final fileMatch = report.fileName?.toLowerCase().contains(searchQuery) ?? false;
            final mobileMatch = report.userMobile?.contains(searchQuery) ?? false;
            final deviceMatch = report.deviceName?.toLowerCase().contains(searchQuery) ?? false;
            final imeiMatch = report.imeiNumber?.contains(searchQuery) ?? false;
            return userMatch || fileMatch || mobileMatch || deviceMatch || imeiMatch;
          }).toList();

          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  controller: searchController,
                  decoration: InputDecoration(
                    hintText: 'Search user name, mobile or file...',
                    prefixIcon: const Icon(Icons.search),
                    fillColor: kWhite,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: kRadius10,
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: const EdgeInsets.symmetric(vertical: 0),
                  ),
                ),
              ),
              if (reports.isNotEmpty)
                Expanded(
                  child: RefreshIndicator(
                    onRefresh: () async {
                      context.read<QcBloc>().add(const QcEvent.refreshQcReports());
                    },
                    child: ListView.builder(
                      controller: controller,
                      itemCount: state.qcOrdersRefreshLoading
                          ? reports.length + 1
                          : reports.length,
                      padding: const EdgeInsets.only(bottom: 20),
                      itemBuilder: (context, index) {
                        if (state.qcOrdersRefreshLoading && index == reports.length) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: ShimmerLoader(itemCount: 1, height: 80, width: sWidth),
                          );
                        }

                        final report = reports[index];
                        return QcReportListTile(
                          report: report,
                          onTap: () {
                             Navigator.pushNamed(context, Routes.qcReportDetail, arguments: report.id);
                          },
                        );
                      },
                    ),
                  ),
                )
              else
                Expanded(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.search_off, size: 64, color: kGreyLight),
                        kHeight10,
                        Text(
                          searchQuery.isEmpty ? 'No reports found' : 'No results found for "$searchQuery"',
                          style: textHeadMedium1,
                        ),
                        if (searchQuery.isEmpty)
                          TextButton(
                            onPressed: () {
                              context.read<QcBloc>().add(const QcEvent.refreshQcReports());
                            },
                            child: const Text('Refresh'),
                          )
                      ],
                    ),
                  ),
                ),
            ],
          );
        }
        
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {
                    context.read<QcBloc>().add(const QcEvent.getQcReports(call: true));
                  },
                  icon: const Icon(Icons.refresh_sharp)),
              const Text('Failed to load reports, tap to refresh'),
            ],
          ),
        );
      }),
    );
  }
}
