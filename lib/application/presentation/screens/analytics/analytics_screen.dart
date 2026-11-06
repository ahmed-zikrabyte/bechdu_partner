import 'package:bechdu_partner/application/business_logic/analytics/analytics_bloc.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/domain/model/analytics/analytics_executive_model.dart';
import 'package:bechdu_partner/domain/model/analytics/analytics_funnel_model.dart';
import 'package:bechdu_partner/domain/model/analytics/analytics_kpi_model.dart';
import 'package:bechdu_partner/domain/model/analytics/analytics_response_model.dart';
import 'package:bechdu_partner/domain/model/analytics/analytics_status_model.dart';
import 'package:bechdu_partner/domain/model/analytics/analytics_top_brand_model.dart';
import 'package:bechdu_partner/domain/model/analytics/analytics_top_device_model.dart';
import 'package:bechdu_partner/domain/model/analytics/analytics_trend_model.dart';
import 'package:bechdu_partner/domain/model/analytics/partner_analytics_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:shimmer/shimmer.dart';

class ScreenAnalytics extends StatefulWidget {
  const ScreenAnalytics({super.key});

  @override
  State<ScreenAnalytics> createState() => _ScreenAnalyticsState();
}

class _ScreenAnalyticsState extends State<ScreenAnalytics> {
  DateTimeRange? _customDateRange;
  String? _selectedExecutivePhone;
  String? _selectedExecutiveName;

  void _triggerFetch({
    required BuildContext context,
    String? range,
    bool forceRefresh = true,
  }) {
    final currentRange =
        range ?? context.read<AnalyticsBloc>().state.selectedRange;
    final startDate = _customDateRange != null
        ? DateFormat('yyyy-MM-dd').format(_customDateRange!.start)
        : null;
    final endDate = _customDateRange != null
        ? DateFormat('yyyy-MM-dd').format(_customDateRange!.end)
        : null;

    context.read<AnalyticsBloc>().add(
          AnalyticsEvent.fetchAnalytics(
            range: currentRange,
            startDate: startDate,
            endDate: endDate,
            executivePhone: _selectedExecutivePhone,
            forceRefresh: forceRefresh,
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    sizeFinder(context);

    return Scaffold(
      backgroundColor: const Color(0xFFF7F9FC),
      appBar: AppBar(
        backgroundColor: kWhite,
        elevation: 0,
        surfaceTintColor: Colors.transparent,
        iconTheme: const IconThemeData(color: kBlack),
        title: Text('Analytics', style: textHeadBoldBig2),
        actions: [
          // Filter Icon with attached popup menu
          BlocBuilder<AnalyticsBloc, AnalyticsState>(
            buildWhen: (prev, curr) =>
                prev.selectedRange != curr.selectedRange ||
                prev.analytics?.executives != curr.analytics?.executives,
            builder: (context, state) {
              return _buildFilterMenuButton(
                context,
                state.selectedRange,
                state.analytics?.executives,
              );
            },
          ),

          // Refresh Button
          IconButton(
            tooltip: 'Refresh',
            icon: const Icon(Icons.refresh_rounded, color: kBluePrimary),
            onPressed: () {
              _triggerFetch(context: context, forceRefresh: true);
            },
          ),
          kWidth10,
        ],
      ),
      body: BlocBuilder<AnalyticsBloc, AnalyticsState>(
        builder: (context, state) {
          if (state.isLoading && state.analytics == null) {
            return const _AnalyticsShimmerLoading();
          }

          if (state.hasError && state.analytics == null) {
            return _buildErrorView(context, state.message);
          }

          final analytics = state.analytics;

          if (analytics == null) {
            return _buildEmptyView(context);
          }

          final isCustomActive =
              state.selectedRange.toLowerCase() == 'custom' &&
                  _customDateRange != null;
          final isNonDefaultPeriod =
              state.selectedRange.toLowerCase() != 'monthly' || isCustomActive;
          final hasExecutiveFilter = _selectedExecutivePhone != null &&
              _selectedExecutivePhone != 'all';

          return RefreshIndicator(
            color: kBluePrimary,
            backgroundColor: kWhite,
            onRefresh: () async {
              _triggerFetch(context: context, forceRefresh: true);
              await Future.delayed(const Duration(milliseconds: 600));
            },
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Active Filter Banner (shows when non-default period or executive is applied)
                  if (isNonDefaultPeriod || hasExecutiveFilter) ...[
                    _buildActiveFilterChip(
                      context,
                      selectedRange: state.selectedRange,
                      executiveName: _selectedExecutiveName,
                    ),
                    kHeight10,
                  ],

                  // Partner Hero Card
                  if (analytics.partner != null) ...[
                    _PartnerProfileCard(partner: analytics.partner!),
                    kHeight20,
                  ],

                  // Financial Performance Section (GMV, Revenue, Profit & Gross Profit)
                  _buildSectionHeader('Financial & Profit Overview'),
                  kHeight10,
                  _buildFinancialCards(analytics),
                  kHeight20,

                  // Operational KPIs (Pickup Completed, Leads Received & Contacted, Pending & Overdue, Cancelled, Turnaround)
                  _buildSectionHeader('Operational Performance'),
                  kHeight10,
                  _buildOperationalKpiGrid(analytics.kpis),
                  kHeight20,

                  // Lead Conversion Funnel
                  if (analytics.funnel != null &&
                      analytics.funnel!.isNotEmpty) ...[
                    _buildSectionHeader('Pipeline Funnel'),
                    kHeight10,
                    _FunnelCard(funnel: analytics.funnel!),
                    kHeight20,
                  ],

                  // Top Mobile Brands Section (NEW)
                  if (analytics.topBrands != null &&
                      analytics.topBrands!.isNotEmpty) ...[
                    _buildSectionHeader('Top Mobile Brands'),
                    kHeight10,
                    _TopBrandsSection(
                      topBrands: analytics.topBrands!,
                      totalGmv: analytics.kpis?.totalTransactionValue,
                    ),
                    kHeight20,
                  ],

                  // Top Mobile Devices Section (NEW)
                  if (analytics.topDevices != null &&
                      analytics.topDevices!.isNotEmpty) ...[
                    _buildSectionHeader('Top Mobile Devices'),
                    kHeight10,
                    _TopDevicesSection(topDevices: analytics.topDevices!),
                    kHeight20,
                  ],

                  // Pickup Status Distribution
                  if (analytics.statusDistribution != null) ...[
                    _buildSectionHeader('Pickup Status Distribution'),
                    kHeight10,
                    _StatusDistributionCard(
                      status: analytics.statusDistribution!,
                    ),
                    kHeight20,
                  ],

                  // Team / Executive Performance
                  if (analytics.executives != null &&
                      analytics.executives!.isNotEmpty) ...[
                    _buildSectionHeader('Team Performance'),
                    kHeight10,
                    _ExecutivesSection(
                      executives: analytics.executives!,
                      selectedExecutivePhone: _selectedExecutivePhone,
                      onSelectExecutive: (phone, name) {
                        setState(() {
                          _selectedExecutivePhone = phone;
                          _selectedExecutiveName = name;
                        });
                        _triggerFetch(context: context);
                      },
                    ),
                    kHeight20,
                  ],

                  // Performance Trends
                  _buildSectionHeader('Performance Trends'),
                  kHeight10,
                  _TrendsSection(trends: analytics.trends),
                  kHeight30,
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  // Filter Icon Button with Attached Popup Menu
  Widget _buildFilterMenuButton(
    BuildContext context,
    String selectedRange,
    List<AnalyticsExecutiveModel>? executives,
  ) {
    final isCustom = selectedRange.toLowerCase() == 'custom';
    final hasActiveFilter = selectedRange.toLowerCase() != 'monthly' ||
        (_selectedExecutivePhone != null && _selectedExecutivePhone != 'all');

    return PopupMenuButton<String>(
      tooltip: 'Filter Range',
      offset: const Offset(0, 48), // Anchors directly beneath the icon
      shape: RoundedRectangleBorder(borderRadius: kRadius15),
      color: kWhite,
      elevation: 6,
      shadowColor: kBlack.withValues(alpha: 0.12),
      icon: Stack(
        alignment: Alignment.topRight,
        children: [
          const Icon(Icons.filter_list_rounded, color: kBluePrimary),
          if (hasActiveFilter)
            Container(
              width: 8,
              height: 8,
              decoration: const BoxDecoration(
                color: kGreenPrimary,
                shape: BoxShape.circle,
              ),
            ),
        ],
      ),
      onSelected: (value) async {
        if (value.startsWith('exec:')) {
          final phone = value.replaceFirst('exec:', '');
          if (phone == 'all') {
            setState(() {
              _selectedExecutivePhone = null;
              _selectedExecutiveName = null;
            });
          } else {
            final exec = executives?.firstWhere(
              (e) => e.phone == phone,
              orElse: () => AnalyticsExecutiveModel(name: phone),
            );
            setState(() {
              _selectedExecutivePhone = phone;
              _selectedExecutiveName = exec?.name;
            });
          }
          _triggerFetch(context: context);
          return;
        }

        if (value == 'custom') {
          await _selectCustomDateRange(context);
        } else {
          setState(() {
            _customDateRange = null;
          });
          _triggerFetch(context: context, range: value);
        }
      },
      itemBuilder: (context) {
        final List<PopupMenuEntry<String>> items = [
          PopupMenuItem(
            enabled: false,
            height: 32,
            child: Text(
              'DATE RANGE',
              style: textHeadBold1.copyWith(
                color: kGreyLight,
                fontSize: 10,
                letterSpacing: 0.8,
              ),
            ),
          ),
          const PopupMenuDivider(height: 1),
          _buildPopupMenuItem(
            value: 'today',
            title: 'Today',
            icon: Icons.today_outlined,
            isSelected: selectedRange.toLowerCase() == 'today',
          ),
          _buildPopupMenuItem(
            value: 'weekly',
            title: 'Weekly',
            icon: Icons.view_week_outlined,
            isSelected: selectedRange.toLowerCase() == 'weekly',
          ),
          _buildPopupMenuItem(
            value: 'monthly',
            title: 'Monthly',
            icon: Icons.calendar_view_month_outlined,
            isSelected: selectedRange.toLowerCase() == 'monthly',
          ),
          _buildPopupMenuItem(
            value: 'all',
            title: 'All Time',
            icon: Icons.all_inclusive_rounded,
            isSelected: selectedRange.toLowerCase() == 'all',
          ),
          _buildPopupMenuItem(
            value: 'custom',
            title: isCustom && _customDateRange != null
                ? '${DateFormat('dd MMM').format(_customDateRange!.start)} - ${DateFormat('dd MMM').format(_customDateRange!.end)}'
                : 'Custom Range',
            icon: Icons.date_range_outlined,
            isSelected: isCustom,
          ),
        ];

        // Executive Filter Section in Popup if available
        if (executives != null && executives.isNotEmpty) {
          items.add(const PopupMenuDivider(height: 1));
          items.add(
            PopupMenuItem(
              enabled: false,
              height: 32,
              child: Text(
                'FILTER BY EXECUTIVE',
                style: textHeadBold1.copyWith(
                  color: kGreyLight,
                  fontSize: 10,
                  letterSpacing: 0.8,
                ),
              ),
            ),
          );
          items.add(
            _buildPopupMenuItem(
              value: 'exec:all',
              title: 'All Executives',
              icon: Icons.people_outline_rounded,
              isSelected: _selectedExecutivePhone == null ||
                  _selectedExecutivePhone == 'all',
            ),
          );
          for (final exec in executives) {
            if (exec.phone != null && exec.phone!.isNotEmpty) {
              items.add(
                _buildPopupMenuItem(
                  value: 'exec:${exec.phone}',
                  title: exec.name ?? exec.phone!,
                  icon: Icons.person_outline_rounded,
                  isSelected: _selectedExecutivePhone == exec.phone,
                ),
              );
            }
          }
        }

        return items;
      },
    );
  }

  // Popup Menu Item
  PopupMenuItem<String> _buildPopupMenuItem({
    required String value,
    required String title,
    required IconData icon,
    required bool isSelected,
  }) {
    return PopupMenuItem<String>(
      value: value,
      height: 40,
      child: Row(
        children: [
          Icon(
            icon,
            size: 18,
            color: isSelected ? kBluePrimary : kGreyDark,
          ),
          kWidth10,
          Expanded(
            child: Text(
              title,
              style: isSelected
                  ? textHeadBold1.copyWith(color: kBluePrimary, fontSize: 13)
                  : textHeadRegular1.copyWith(color: kBlack, fontSize: 13),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          if (isSelected)
            const Icon(
              Icons.check_rounded,
              size: 18,
              color: kBluePrimary,
            ),
        ],
      ),
    );
  }

  // Opens Date Range Picker for Custom Dates
  Future<void> _selectCustomDateRange(BuildContext context) async {
    final now = DateTime.now();
    final picked = await showDateRangePicker(
      context: context,
      firstDate: DateTime(2020),
      lastDate: now,
      initialDateRange: _customDateRange ??
          DateTimeRange(
            start: now.subtract(const Duration(days: 7)),
            end: now,
          ),
      helpText: 'SELECT DATE RANGE',
      cancelText: 'CANCEL',
      confirmText: 'APPLY',
      saveText: 'APPLY',
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: const ColorScheme.light(
              primary: kBluePrimary,
              onPrimary: kWhite,
              surface: kWhite,
              onSurface: kBlack,
              secondary: kGreenPrimary,
            ),
          ),
          child: child!,
        );
      },
    );

    if (picked != null) {
      setState(() {
        _customDateRange = picked;
      });
      if (context.mounted) {
        _triggerFetch(context: context, range: 'custom');
      }
    }
  }

  // Active Filter Banner Chip (period & executive filters)
  Widget _buildActiveFilterChip(
    BuildContext context, {
    required String selectedRange,
    String? executiveName,
  }) {
    String rangeLabel =
        selectedRange[0].toUpperCase() + selectedRange.substring(1);
    if (selectedRange.toLowerCase() == 'all') {
      rangeLabel = 'All Time';
    } else if (selectedRange.toLowerCase() == 'custom' &&
        _customDateRange != null) {
      rangeLabel =
          '${DateFormat('dd MMM').format(_customDateRange!.start)} - ${DateFormat('dd MMM').format(_customDateRange!.end)}';
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: kBluelight.withValues(alpha: 0.18),
        borderRadius: kRadius10,
        border: Border.all(color: kBluePrimary.withValues(alpha: 0.25)),
      ),
      child: Row(
        children: [
          const Icon(Icons.filter_alt_rounded, size: 16, color: kBluePrimary),
          const SizedBox(width: 6),
          Expanded(
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: 6,
              children: [
                Text(
                  'Period:',
                  style: textHeadRegular1.copyWith(
                    color: kGreyDark,
                    fontSize: 12,
                  ),
                ),
                Text(
                  rangeLabel,
                  style: textHeadBold1.copyWith(
                    color: kBluePrimary,
                    fontSize: 12,
                  ),
                ),
                if (executiveName != null) ...[
                  Text(
                    '• Executive:',
                    style: textHeadRegular1.copyWith(
                      color: kGreyDark,
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    executiveName,
                    style: textHeadBold1.copyWith(
                      color: kGreenPrimary,
                      fontSize: 12,
                    ),
                  ),
                ],
              ],
            ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                _customDateRange = null;
                _selectedExecutivePhone = null;
                _selectedExecutiveName = null;
              });
              context.read<AnalyticsBloc>().add(
                    const AnalyticsEvent.fetchAnalytics(
                      range: 'monthly',
                      forceRefresh: true,
                    ),
                  );
            },
            borderRadius: kRadius50,
            child: Container(
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: kGreyLighter.withValues(alpha: 0.8),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.close_rounded,
                size: 14,
                color: kGreyDark,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Section Header with vertical brand indicator
  Widget _buildSectionHeader(String title) {
    return Row(
      children: [
        Container(
          width: 4,
          height: 18,
          decoration: BoxDecoration(
            color: kBluePrimary,
            borderRadius: BorderRadius.circular(2),
          ),
        ),
        kWidth10,
        Text(title, style: textHeadBoldBig),
      ],
    );
  }

  // Financial & Profit Performance Cards (GMV, Revenue, Profit & Gross Profit)
  Widget _buildFinancialCards(AnalyticsResponseModel analytics) {
    final kpis = analytics.kpis;
    final grossProfit = kpis?.grossProfit ?? analytics.grossProfit;
    final profit = kpis?.profit ?? kpis?.netProfit ?? analytics.profit;
    final gmv = kpis?.totalTransactionValue;
    final revenue = kpis?.applicableRevenue;
    final margin = kpis?.profitMargin;

    return Column(
      children: [
        // Top Row: Gross Profit & Net Profit Cards
        Row(
          children: [
            Expanded(
              child: _HeroStatCard(
                title: 'Gross Profit',
                value: _formatCurrency(grossProfit),
                subtitle: margin != null
                    ? 'Margin: ${_formatPercent(margin)}'
                    : grossProfit != null && gmv != null && gmv > 0
                        ? 'Margin: ${_formatPercent(grossProfit / gmv * 100)}'
                        : 'Earnings on sales',
                icon: Icons.trending_up_rounded,
                iconColor: kGreenPrimary,
                bgColor: klightGreen.withValues(alpha: 0.15),
                borderColor: kGreenPrimary.withValues(alpha: 0.35),
              ),
            ),
            kWidth10,
            Expanded(
              child: _HeroStatCard(
                title: 'Net Profit',
                value: _formatCurrency(profit),
                subtitle: 'Applicable Rev: ${_formatCurrency(revenue)}',
                icon: Icons.account_balance_wallet_outlined,
                iconColor: kBluePrimary,
                bgColor: kBluelight.withValues(alpha: 0.25),
                borderColor: kBluePrimary.withValues(alpha: 0.3),
              ),
            ),
          ],
        ),
        kHeight10,

        // Second Row: Transaction Value (GMV) & Completed Pickups
        Row(
          children: [
            Expanded(
              child: _MetricCard(
                title: 'Transaction Value (GMV)',
                value: _formatCurrency(gmv),
                subtitle:
                    'Vol: ${kpis?.orderVolume ?? kpis?.pickupCompleted ?? 0} Orders',
                icon: Icons.currency_rupee_rounded,
                iconColor: kGreenPrimary,
              ),
            ),
            kWidth10,
            Expanded(
              child: _MetricCard(
                title: 'Pickup Completed',
                value: '${kpis?.pickupCompleted ?? 0}',
                subtitle: '${_formatPercent(kpis?.conversionRate)} Conversion',
                icon: Icons.task_alt_rounded,
                iconColor: kBluePrimary,
              ),
            ),
          ],
        ),
      ],
    );
  }

  // Operational KPIs Grid
  Widget _buildOperationalKpiGrid(AnalyticsKpiModel? kpis) {
    return Column(
      children: [
        // Row 1: Leads Received & Leads Accepted
        Row(
          children: [
            Expanded(
              child: _MetricCard(
                title: 'Leads Received',
                value: '${kpis?.leadsReceived ?? 0}',
                subtitle:
                    'Assigned: ${kpis?.leadsAssigned ?? 0} • Contacted: ${kpis?.leadsContacted ?? 0}',
                icon: Icons.inbox_rounded,
                iconColor: kBluePrimary,
              ),
            ),
            kWidth10,
            Expanded(
              child: _MetricCard(
                title: 'Leads Accepted',
                value: '${kpis?.leadsAccepted ?? 0}',
                subtitle: 'Accepted Leads',
                icon: Icons.check_circle_outline_rounded,
                iconColor: kGreenPrimary,
              ),
            ),
          ],
        ),

        kHeight10,

        // Row 2: Pickup Scheduled & Pending
        Row(
          children: [
            Expanded(
              child: _MetricCard(
                title: 'Pickup Scheduled',
                value: '${kpis?.pickupScheduled ?? 0}',
                subtitle: 'Scheduled Pickups',
                icon: Icons.calendar_month_rounded,
                iconColor: kBluePrimary,
              ),
            ),
            kWidth10,
            Expanded(
              child: _MetricCard(
                title: 'Pending & Overdue',
                value: '${kpis?.pickupPending ?? 0}',
                subtitle: '${kpis?.overduePickups ?? 0} Overdue Pickups',
                icon: Icons.hourglass_top_rounded,
                iconColor: kOrangePrimary,
              ),
            ),
          ],
        ),

        kHeight10,

        // Row 3: Cancelled & Turnaround Time
        Row(
          children: [
            Expanded(
              child: _MetricCard(
                title: 'Pickup Cancelled',
                value: '${kpis?.pickupCancelled ?? 0}',
                subtitle:
                    '${_formatPercent(kpis?.cancellationRate)} Cancellation Rate',
                icon: Icons.cancel_outlined,
                iconColor: kRed,
              ),
            ),
            kWidth10,
            Expanded(
              child: _MetricCard(
                title: 'Avg Turnaround Time',
                value: kpis?.avgPickupTimeText ?? '-',
                subtitle: 'Response: ${kpis?.avgResponseTimeText ?? '-'}',
                icon: Icons.timer_outlined,
                iconColor: kGreenPrimary,
              ),
            ),
          ],
        ),
      ],
    );
  }

  // Error View
  Widget _buildErrorView(BuildContext context, String? message) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: kRedLight.withValues(alpha: 0.2),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.error_outline_rounded,
                color: kRedDark,
                size: 48,
              ),
            ),
            kHeight20,
            Text('Oops! Something went wrong', style: textHeadBoldBig),
            kHeight10,
            Text(
              message ?? errorMessage,
              textAlign: TextAlign.center,
              style: textHeadRegular1.copyWith(color: kGreyDark),
            ),
            kHeight20,
            ElevatedButton.icon(
              onPressed: () {
                _triggerFetch(context: context, forceRefresh: true);
              },
              icon: const Icon(Icons.refresh_rounded, color: kWhite),
              label: Text(
                'Try Again',
                style: textHeadBold1.copyWith(color: kWhite),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: kBluePrimary,
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                shape: RoundedRectangleBorder(borderRadius: kRadius10),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Empty View
  Widget _buildEmptyView(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: kBluelight.withValues(alpha: 0.3),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.bar_chart_rounded,
                color: kBluePrimary,
                size: 48,
              ),
            ),
            kHeight20,
            Text('No Analytics Available', style: textHeadBoldBig),
            kHeight10,
            Text(
              'There is no analytics data available for this partner yet.',
              textAlign: TextAlign.center,
              style: textHeadRegular1.copyWith(color: kGreyLight),
            ),
            kHeight20,
            ElevatedButton(
              onPressed: () {
                _triggerFetch(context: context, forceRefresh: true);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: kBluePrimary,
                shape: RoundedRectangleBorder(borderRadius: kRadius10),
              ),
              child: Text(
                'Refresh',
                style: textHeadBold1.copyWith(color: kWhite),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// PARTNER PROFILE HERO CARD
// ---------------------------------------------------------------------------
class _PartnerProfileCard extends StatelessWidget {
  final PartnerAnalyticsModel partner;

  const _PartnerProfileCard({required this.partner});

  String _getInitials(String? name) {
    if (name == null || name.trim().isEmpty) return 'BP';
    final parts = name.trim().split(' ');
    if (parts.length >= 2) {
      return '${parts[0][0]}${parts[1][0]}'.toUpperCase();
    }
    return name.substring(0, name.length >= 2 ? 2 : 1).toUpperCase();
  }

  @override
  Widget build(BuildContext context) {
    final isActive = (partner.status ?? '').toLowerCase() == 'active';

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: kWhite,
        borderRadius: kRadius15,
        border: Border.all(color: kGreyLighter.withValues(alpha: 0.7)),
        boxShadow: [
          BoxShadow(
            color: kBlack.withValues(alpha: 0.04),
            offset: const Offset(0, 3),
            blurRadius: 10,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              // Partner Initials Avatar with brand concentric rings
              CircleAvatar(
                radius: 25,
                backgroundColor: kGreenPrimary.withValues(alpha: 0.2),
                child: CircleAvatar(
                  radius: 22,
                  backgroundColor: kBluePrimary,
                  child: Text(
                    _getInitials(partner.name),
                    style: textHeadBold1.copyWith(
                      color: kWhite,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              kWidth10,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      partner.name ?? 'Partner Name',
                      style: textHeadBoldBig.copyWith(fontSize: 17),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    kHeight5,
                    Row(
                      children: [
                        Text(
                          'ID: ${partner.partnerId ?? '-'}',
                          style: textHeadRegular1.copyWith(
                            color: kGreyDark,
                            fontSize: 12,
                          ),
                        ),
                        if (partner.phone != null &&
                            partner.phone!.isNotEmpty) ...[
                          Text(
                            ' • ',
                            style: textHeadRegular1.copyWith(color: kGreyLight),
                          ),
                          Text(
                            partner.phone!,
                            style: textHeadRegular1.copyWith(
                              color: kGreyDark,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ],
                    ),
                  ],
                ),
              ),
              // Status Pill
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: isActive
                      ? kGreenPrimary.withValues(alpha: 0.12)
                      : kRed.withValues(alpha: 0.12),
                  borderRadius: kRadius50,
                  border: Border.all(
                    color: isActive
                        ? kGreenPrimary.withValues(alpha: 0.4)
                        : kRed.withValues(alpha: 0.4),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.circle,
                      size: 7,
                      color: isActive ? kGreenPrimary : kRed,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      isActive ? 'Active' : (partner.status ?? 'Inactive'),
                      style: textHeadSemiBold1.copyWith(
                        color: isActive ? kGreenPrimary : kRed,
                        fontSize: 11,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          kHeight10,
          Divider(color: kGreyLighter.withValues(alpha: 0.6), height: 1),
          kHeight10,
          Row(
            children: [
              _buildInfoPill(
                icon: Icons.location_on_outlined,
                text: partner.city ?? 'Location N/A',
              ),
              kWidth10,
              _buildInfoPill(
                icon: Icons.people_outline_rounded,
                text: '${partner.totalExecutives ?? 0} Executives',
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildInfoPill({required IconData icon, required String text}) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
        decoration: BoxDecoration(
          color: const Color(0xFFF7F9FC),
          borderRadius: kRadius10,
          border: Border.all(color: kGreyLighter.withValues(alpha: 0.5)),
        ),
        child: Row(
          children: [
            Icon(icon, size: 15, color: kBluePrimary),
            const SizedBox(width: 6),
            Expanded(
              child: Text(
                text,
                style: textHeadMedium1.copyWith(
                  color: kGreyDark,
                  fontSize: 12,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// HERO STAT CARD
// ---------------------------------------------------------------------------
class _HeroStatCard extends StatelessWidget {
  final String title;
  final String value;
  final String subtitle;
  final IconData icon;
  final Color iconColor;
  final Color bgColor;
  final Color borderColor;

  const _HeroStatCard({
    required this.title,
    required this.value,
    required this.subtitle,
    required this.icon,
    required this.iconColor,
    required this.bgColor,
    required this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: kWhite,
        borderRadius: kRadius15,
        border: Border.all(color: borderColor, width: 1.2),
        boxShadow: [
          BoxShadow(
            color: kBlack.withValues(alpha: 0.03),
            offset: const Offset(0, 3),
            blurRadius: 8,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: textHeadMedium1.copyWith(
                  color: kGreyDark,
                  fontSize: 12,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: bgColor,
                  shape: BoxShape.circle,
                ),
                child: Icon(icon, color: iconColor, size: 16),
              ),
            ],
          ),
          kHeight5,
          FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: Text(
              value,
              style: textHeadBoldBig2.copyWith(fontSize: 20),
            ),
          ),
          kHeight5,
          Text(
            subtitle,
            style: textHeadRegular1.copyWith(
              color: iconColor,
              fontWeight: FontWeight.w600,
              fontSize: 11,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// SECONDARY METRIC CARD
// ---------------------------------------------------------------------------
class _MetricCard extends StatelessWidget {
  final String title;
  final String value;
  final String subtitle;
  final IconData icon;
  final Color iconColor;

  const _MetricCard({
    required this.title,
    required this.value,
    required this.subtitle,
    required this.icon,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: kWhite,
        borderRadius: kRadius15,
        border: Border.all(color: kGreyLighter.withValues(alpha: 0.7)),
        boxShadow: [
          BoxShadow(
            color: kBlack.withValues(alpha: 0.03),
            offset: const Offset(0, 2),
            blurRadius: 6,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(7),
                decoration: BoxDecoration(
                  color: iconColor.withValues(alpha: 0.1),
                  borderRadius: kRadius10,
                ),
                child: Icon(icon, size: 18, color: iconColor),
              ),
              Text(
                value,
                style: textHeadBoldBig.copyWith(fontSize: 17),
              ),
            ],
          ),
          kHeight10,
          Text(
            title,
            style: textHeadSemiBold1.copyWith(fontSize: 13),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          kHeight5,
          Text(
            subtitle,
            style: textHeadRegular1.copyWith(
              color: kGreyLight,
              fontSize: 11,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// LEAD CONVERSION FUNNEL CARD
// ---------------------------------------------------------------------------
class _FunnelCard extends StatelessWidget {
  final List<AnalyticsFunnelModel> funnel;

  const _FunnelCard({required this.funnel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: kWhite,
        borderRadius: kRadius15,
        border: Border.all(color: kGreyLighter.withValues(alpha: 0.7)),
        boxShadow: [
          BoxShadow(
            color: kBlack.withValues(alpha: 0.03),
            offset: const Offset(0, 2),
            blurRadius: 8,
          ),
        ],
      ),
      child: Column(
        children: List.generate(funnel.length, (index) {
          final item = funnel[index];
          final pct = (item.pct ?? 0).toDouble();
          final progress = (pct / 100).clamp(0.0, 1.0);
          final isLast = index == funnel.length - 1;

          return Column(
            children: [
              Row(
                children: [
                  // Step index pill
                  Container(
                    width: 22,
                    height: 22,
                    decoration: BoxDecoration(
                      color: kBluePrimary.withValues(alpha: 0.1),
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        '${index + 1}',
                        style: textHeadBold1.copyWith(
                          fontSize: 11,
                          color: kBluePrimary,
                        ),
                      ),
                    ),
                  ),
                  kWidth10,
                  Expanded(
                    child: Text(
                      item.stage ?? 'Stage',
                      style: textHeadSemiBold1.copyWith(fontSize: 13),
                    ),
                  ),
                  Text(
                    '${item.count ?? 0}',
                    style: textHeadBold1.copyWith(fontSize: 14),
                  ),
                  kWidth10,
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                    decoration: BoxDecoration(
                      color: klightGreen.withValues(alpha: 0.18),
                      borderRadius: kRadius50,
                    ),
                    child: Text(
                      _formatPercent(pct),
                      style: textHeadBold1.copyWith(
                        color: kGreenPrimary,
                        fontSize: 11,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              // Styled Progress Bar
              ClipRRect(
                borderRadius: kRadius50,
                child: Container(
                  height: 7,
                  width: double.infinity,
                  color: kGreyLighter.withValues(alpha: 0.5),
                  child: FractionallySizedBox(
                    alignment: Alignment.centerLeft,
                    widthFactor: progress,
                    child: Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [kBluePrimary, kGreenPrimary],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              if (!isLast) ...[
                const SizedBox(height: 12),
                Divider(color: kGreyLighter.withValues(alpha: 0.4), height: 1),
                const SizedBox(height: 12),
              ],
            ],
          );
        }),
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// TOP MOBILE BRANDS SECTION (NEW)
// ---------------------------------------------------------------------------
class _TopBrandsSection extends StatelessWidget {
  final List<AnalyticsTopBrandModel> topBrands;
  final num? totalGmv;

  const _TopBrandsSection({required this.topBrands, this.totalGmv});

  @override
  Widget build(BuildContext context) {
    final maxTotal = topBrands.fold<num>(
      1,
      (max, e) => (e.totalValue ?? 0) > max ? (e.totalValue ?? 0) : max,
    );

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: kWhite,
        borderRadius: kRadius15,
        border: Border.all(color: kGreyLighter.withValues(alpha: 0.7)),
        boxShadow: [
          BoxShadow(
            color: kBlack.withValues(alpha: 0.03),
            offset: const Offset(0, 2),
            blurRadius: 8,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Brand Breakdown',
                style: textHeadMedium1.copyWith(color: kGreyDark),
              ),
              Text(
                '${topBrands.length} Brands',
                style: textHeadBold1.copyWith(color: kBluePrimary),
              ),
            ],
          ),
          kHeight10,
          ...List.generate(topBrands.length, (index) {
            final item = topBrands[index];
            final brandGmv = item.totalValue ?? 0;
            final progress = (brandGmv / maxTotal).clamp(0.05, 1.0);
            final isLast = index == topBrands.length - 1;

            return Column(
              children: [
                Row(
                  children: [
                    // Rank Badge
                    Container(
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                        color: index == 0
                            ? kGreenPrimary.withValues(alpha: 0.15)
                            : index == 1
                                ? kBluePrimary.withValues(alpha: 0.12)
                                : kGreyLighter.withValues(alpha: 0.6),
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Text(
                          '#${index + 1}',
                          style: textHeadBold1.copyWith(
                            fontSize: 10,
                            color: index == 0
                                ? kGreenPrimary
                                : index == 1
                                    ? kBluePrimary
                                    : kGreyDark,
                          ),
                        ),
                      ),
                    ),
                    kWidth10,
                    // Brand Name
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item.brand ?? 'Unknown Brand',
                            style: textHeadBold1.copyWith(fontSize: 13),
                          ),
                          Row(
                            children: [
                              Text(
                                '${item.count ?? 0} Orders',
                                style: textHeadRegular1.copyWith(
                                  color: kGreyLight,
                                  fontSize: 11,
                                ),
                              ),
                              if (item.profit != null ||
                                  item.grossProfit != null) ...[
                                Text(
                                  ' • Profit: ',
                                  style: textHeadRegular1.copyWith(
                                    color: kGreyLight,
                                    fontSize: 11,
                                  ),
                                ),
                                Text(
                                  _formatCurrency(
                                    item.profit ?? item.grossProfit,
                                  ),
                                  style: textHeadSemiBold1.copyWith(
                                    color: kGreenPrimary,
                                    fontSize: 11,
                                  ),
                                ),
                              ],
                            ],
                          ),
                        ],
                      ),
                    ),
                    // Total Value (GMV)
                    Text(
                      _formatCurrency(item.totalValue),
                      style: textHeadBold1.copyWith(
                        color: kBlack,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 6),
                // Progress Bar
                ClipRRect(
                  borderRadius: kRadius50,
                  child: Container(
                    height: 5,
                    width: double.infinity,
                    color: kGreyLighter.withValues(alpha: 0.4),
                    child: FractionallySizedBox(
                      alignment: Alignment.centerLeft,
                      widthFactor: progress,
                      child: Container(
                        decoration: BoxDecoration(
                          color: index == 0 ? kGreenPrimary : kBluePrimary,
                        ),
                      ),
                    ),
                  ),
                ),
                if (!isLast) ...[
                  const SizedBox(height: 10),
                  Divider(
                      color: kGreyLighter.withValues(alpha: 0.4), height: 1),
                  const SizedBox(height: 10),
                ],
              ],
            );
          }),
        ],
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// TOP MOBILE DEVICES SECTION (NEW)
// ---------------------------------------------------------------------------
class _TopDevicesSection extends StatelessWidget {
  final List<AnalyticsTopDeviceModel> topDevices;

  const _TopDevicesSection({required this.topDevices});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: kWhite,
        borderRadius: kRadius15,
        border: Border.all(color: kGreyLighter.withValues(alpha: 0.7)),
        boxShadow: [
          BoxShadow(
            color: kBlack.withValues(alpha: 0.03),
            offset: const Offset(0, 2),
            blurRadius: 8,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Top Models Transacted',
                style: textHeadMedium1.copyWith(color: kGreyDark),
              ),
              Text(
                '${topDevices.length} Models',
                style: textHeadBold1.copyWith(color: kBluePrimary),
              ),
            ],
          ),
          kHeight10,
          ...List.generate(topDevices.length, (index) {
            final item = topDevices[index];
            final isLast = index == topDevices.length - 1;

            return Column(
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: kBluelight.withValues(alpha: 0.25),
                        borderRadius: kRadius10,
                      ),
                      child: const Icon(
                        Icons.phone_android_rounded,
                        color: kBluePrimary,
                        size: 20,
                      ),
                    ),
                    kWidth10,
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item.deviceName ?? 'Device Name',
                            style: textHeadBold1.copyWith(fontSize: 13),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 2),
                          Row(
                            children: [
                              if (item.brand != null &&
                                  item.brand!.isNotEmpty) ...[
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 6, vertical: 1),
                                  decoration: BoxDecoration(
                                    color: kGreyLighter.withValues(alpha: 0.6),
                                    borderRadius: kRadius5,
                                  ),
                                  child: Text(
                                    item.brand!,
                                    style: textHeadRegular1.copyWith(
                                      fontSize: 10,
                                      color: kGreyDark,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 6),
                              ],
                              Text(
                                '${item.count ?? 0} Orders',
                                style: textHeadRegular1.copyWith(
                                  color: kGreyLight,
                                  fontSize: 11,
                                ),
                              ),
                              if (item.profit != null ||
                                  item.grossProfit != null) ...[
                                Text(
                                  ' • Profit: ',
                                  style: textHeadRegular1.copyWith(
                                    color: kGreyLight,
                                    fontSize: 11,
                                  ),
                                ),
                                Text(
                                  _formatCurrency(
                                    item.profit ?? item.grossProfit,
                                  ),
                                  style: textHeadSemiBold1.copyWith(
                                    color: kGreenPrimary,
                                    fontSize: 11,
                                  ),
                                ),
                              ],
                            ],
                          ),
                        ],
                      ),
                    ),
                    Text(
                      _formatCurrency(item.totalValue),
                      style: textHeadBold1.copyWith(
                        color: kBlack,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                if (!isLast) ...[
                  const SizedBox(height: 10),
                  Divider(
                      color: kGreyLighter.withValues(alpha: 0.4), height: 1),
                  const SizedBox(height: 10),
                ],
              ],
            );
          }),
        ],
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// PICKUP STATUS DISTRIBUTION CARD
// ---------------------------------------------------------------------------
class _StatusDistributionCard extends StatelessWidget {
  final AnalyticsStatusModel status;

  const _StatusDistributionCard({required this.status});

  @override
  Widget build(BuildContext context) {
    final statusItems = [
      {'label': 'New', 'count': status.newCount ?? 0, 'color': kBluePrimary},
      {
        'label': 'Processing',
        'count': status.processing ?? 0,
        'color': kYellowPrimary
      },
      {
        'label': 'Completed',
        'count': status.completed ?? 0,
        'color': kGreenPrimary
      },
      {'label': 'Cancelled', 'count': status.cancelled ?? 0, 'color': kRed},
      {
        'label': 'Rescheduled',
        'count': status.rescheduled ?? 0,
        'color': kOrangePrimary
      },
      {'label': 'Other', 'count': status.other ?? 0, 'color': kGreyDark},
    ];

    final total = statusItems.fold<int>(
      0,
      (sum, item) => sum + (item['count'] as int),
    );

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: kWhite,
        borderRadius: kRadius15,
        border: Border.all(color: kGreyLighter.withValues(alpha: 0.7)),
        boxShadow: [
          BoxShadow(
            color: kBlack.withValues(alpha: 0.03),
            offset: const Offset(0, 2),
            blurRadius: 8,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Total count row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total Orders Tracked',
                style: textHeadMedium1.copyWith(color: kGreyDark),
              ),
              Text(
                '$total',
                style: textHeadBoldBig.copyWith(fontSize: 16),
              ),
            ],
          ),
          kHeight10,

          // Multi-color segmented distribution bar
          if (total > 0)
            ClipRRect(
              borderRadius: kRadius50,
              child: SizedBox(
                height: 9,
                child: Row(
                  children: statusItems
                      .where((e) => (e['count'] as int) > 0)
                      .map((e) {
                    final weight =
                        ((e['count'] as int) / total).clamp(0.01, 1.0);
                    return Expanded(
                      flex: (weight * 1000).toInt(),
                      child: Container(color: e['color'] as Color),
                    );
                  }).toList(),
                ),
              ),
            ),
          kHeight20,

          // Grid of Status badges
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: statusItems.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 54,
              crossAxisSpacing: 10,
              mainAxisSpacing: 8,
            ),
            itemBuilder: (context, index) {
              final item = statusItems[index];
              final count = item['count'] as int;
              final color = item['color'] as Color;
              final percentage = total > 0 ? (count / total * 100).round() : 0;

              return Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                decoration: BoxDecoration(
                  color: const Color(0xFFF7F9FC),
                  borderRadius: kRadius10,
                  border:
                      Border.all(color: kGreyLighter.withValues(alpha: 0.6)),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        color: color,
                        shape: BoxShape.circle,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            item['label'] as String,
                            style: textHeadMedium1.copyWith(
                              fontSize: 12,
                              color: kGreyDark,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            '$percentage%',
                            style: textHeadRegular1.copyWith(
                              fontSize: 10,
                              color: kGreyLight,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      '$count',
                      style: textHeadBold1.copyWith(fontSize: 15),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// EXECUTIVE PERFORMANCE SECTION
// ---------------------------------------------------------------------------
class _ExecutivesSection extends StatelessWidget {
  final List<AnalyticsExecutiveModel> executives;
  final String? selectedExecutivePhone;
  final Function(String? phone, String? name) onSelectExecutive;

  const _ExecutivesSection({
    required this.executives,
    this.selectedExecutivePhone,
    required this.onSelectExecutive,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: executives.map((executive) {
        final isActive = (executive.status ?? '').toLowerCase() == 'active';
        final isSelected = selectedExecutivePhone == executive.phone;

        return InkWell(
          onTap: () {
            if (isSelected) {
              onSelectExecutive(null, null);
            } else {
              onSelectExecutive(executive.phone, executive.name);
            }
          },
          borderRadius: kRadius15,
          child: Container(
            margin: const EdgeInsets.only(bottom: 10),
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: kWhite,
              borderRadius: kRadius15,
              border: Border.all(
                color: isSelected
                    ? kBluePrimary
                    : kGreyLighter.withValues(alpha: 0.7),
                width: isSelected ? 1.6 : 1,
              ),
              boxShadow: [
                BoxShadow(
                  color: isSelected
                      ? kBluePrimary.withValues(alpha: 0.08)
                      : kBlack.withValues(alpha: 0.03),
                  offset: const Offset(0, 2),
                  blurRadius: 6,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 18,
                      backgroundColor: isSelected
                          ? kBluePrimary
                          : kBluePrimary.withValues(alpha: 0.1),
                      child: Icon(
                        Icons.person_rounded,
                        color: isSelected ? kWhite : kBluePrimary,
                        size: 20,
                      ),
                    ),
                    kWidth10,
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                executive.name ?? 'Executive Name',
                                style: textHeadSemiBold1.copyWith(fontSize: 14),
                              ),
                              if (isSelected) ...[
                                const SizedBox(width: 6),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 6, vertical: 1),
                                  decoration: BoxDecoration(
                                    color: kBluePrimary.withValues(alpha: 0.15),
                                    borderRadius: kRadius50,
                                  ),
                                  child: Text(
                                    'Filtered',
                                    style: textHeadBold1.copyWith(
                                      color: kBluePrimary,
                                      fontSize: 10,
                                    ),
                                  ),
                                ),
                              ],
                            ],
                          ),
                          if (executive.phone != null)
                            Text(
                              executive.phone!,
                              style: textHeadRegular1.copyWith(
                                color: kGreyLight,
                                fontSize: 11,
                              ),
                            ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 3),
                      decoration: BoxDecoration(
                        color: isActive
                            ? kGreenPrimary.withValues(alpha: 0.12)
                            : kRed.withValues(alpha: 0.12),
                        borderRadius: kRadius50,
                      ),
                      child: Text(
                        isActive ? 'Active' : 'Inactive',
                        style: textHeadSemiBold1.copyWith(
                          color: isActive ? kGreenPrimary : kRed,
                          fontSize: 11,
                        ),
                      ),
                    ),
                  ],
                ),
                kHeight10,
                Divider(color: kGreyLighter.withValues(alpha: 0.5), height: 1),
                kHeight10,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildExecutiveMiniStat(
                        'Assigned', '${executive.leadsAssigned ?? 0}'),
                    _buildExecutiveMiniStat(
                        'Completed', '${executive.completed ?? 0}'),
                    _buildExecutiveMiniStat(
                        'Conversion', _formatPercent(executive.conversionRate)),
                    _buildExecutiveMiniStat(
                        'GMV', _formatCurrency(executive.gmv)),
                    if (executive.profit != null ||
                        executive.grossProfit != null)
                      _buildExecutiveMiniStat(
                        'Profit',
                        _formatCurrency(
                          executive.profit ?? executive.grossProfit,
                        ),
                        isProfit: true,
                      ),
                  ],
                ),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }

  Widget _buildExecutiveMiniStat(String label, String value,
      {bool isProfit = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          label,
          style: textHeadRegular1.copyWith(
            color: kGreyLight,
            fontSize: 11,
          ),
        ),
        const SizedBox(height: 2),
        Text(
          value,
          style: textHeadBold1.copyWith(
            fontSize: 12,
            color: isProfit ? kGreenPrimary : kBlack,
          ),
        ),
      ],
    );
  }
}

// ---------------------------------------------------------------------------
// TRENDS SECTION
// ---------------------------------------------------------------------------
class _TrendsSection extends StatelessWidget {
  final List<AnalyticsTrendModel>? trends;

  const _TrendsSection({this.trends});

  @override
  Widget build(BuildContext context) {
    if (trends == null || trends!.isEmpty) {
      return Container(
        width: double.infinity,
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: kWhite,
          borderRadius: kRadius15,
          border: Border.all(color: kGreyLighter.withValues(alpha: 0.7)),
        ),
        child: Column(
          children: [
            Icon(
              Icons.trending_up_rounded,
              size: 36,
              color: kGreyLight.withValues(alpha: 0.6),
            ),
            kHeight10,
            Text(
              'No trend data available for this range',
              style: textHeadRegular1.copyWith(color: kGreyLight),
            ),
          ],
        ),
      );
    }

    return Column(
      children: trends!.map((item) {
        return Container(
          margin: const EdgeInsets.only(bottom: 8),
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: kWhite,
            borderRadius: kRadius15,
            border: Border.all(color: kGreyLighter.withValues(alpha: 0.7)),
            boxShadow: [
              BoxShadow(
                color: kBlack.withValues(alpha: 0.02),
                offset: const Offset(0, 2),
                blurRadius: 6,
              ),
            ],
          ),
          child: Row(
            children: [
              // Date Box
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                decoration: BoxDecoration(
                  color: const Color(0xFFF7F9FC),
                  borderRadius: kRadius10,
                  border:
                      Border.all(color: kGreyLighter.withValues(alpha: 0.6)),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(
                      Icons.calendar_today_outlined,
                      size: 13,
                      color: kBluePrimary,
                    ),
                    const SizedBox(width: 6),
                    Text(
                      item.date ?? '-',
                      style: textHeadSemiBold1.copyWith(fontSize: 12),
                    ),
                  ],
                ),
              ),
              kWidth10,
              // Mini Stat Chips
              Expanded(
                child: Wrap(
                  spacing: 6,
                  runSpacing: 4,
                  children: [
                    _buildTrendPill('Rec: ${item.received ?? 0}', kBluePrimary),
                    _buildTrendPill(
                        'Done: ${item.completed ?? 0}', kGreenPrimary),
                    _buildTrendPill('Canc: ${item.cancelled ?? 0}', kRed),
                    if (item.profit != null || item.grossProfit != null)
                      _buildTrendPill(
                        'P: ${_formatCurrency(item.profit ?? item.grossProfit)}',
                        kGreenPrimary,
                      ),
                  ],
                ),
              ),
              // Value Badge (GMV)
              Text(
                _formatCurrency(item.value),
                style: textHeadBold1.copyWith(
                  color: kBlack,
                  fontSize: 13,
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }

  Widget _buildTrendPill(String label, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.1),
        borderRadius: kRadius5,
      ),
      child: Text(
        label,
        style: textHeadMedium1.copyWith(
          color: color,
          fontSize: 10,
        ),
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// SHIMMER LOADING PLACEHOLDER
// ---------------------------------------------------------------------------
class _AnalyticsShimmerLoading extends StatelessWidget {
  const _AnalyticsShimmerLoading();

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: kWhite,
      highlightColor: const Color(0xFFEAEAEA),
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Partner card skeleton
            Container(
              height: 120,
              decoration: BoxDecoration(
                color: kGreyLight,
                borderRadius: kRadius15,
              ),
            ),
            kHeight20,
            // Header skeleton
            Container(
              height: 20,
              width: 160,
              decoration: BoxDecoration(
                color: kGreyLight,
                borderRadius: kRadius5,
              ),
            ),
            kHeight10,
            // Financial cards skeleton (2x2)
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: kGreyLight,
                      borderRadius: kRadius15,
                    ),
                  ),
                ),
                kWidth10,
                Expanded(
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: kGreyLight,
                      borderRadius: kRadius15,
                    ),
                  ),
                ),
              ],
            ),
            kHeight10,
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 90,
                    decoration: BoxDecoration(
                      color: kGreyLight,
                      borderRadius: kRadius15,
                    ),
                  ),
                ),
                kWidth10,
                Expanded(
                  child: Container(
                    height: 90,
                    decoration: BoxDecoration(
                      color: kGreyLight,
                      borderRadius: kRadius15,
                    ),
                  ),
                ),
              ],
            ),
            kHeight20,
            // Section skeleton
            Container(
              height: 160,
              decoration: BoxDecoration(
                color: kGreyLight,
                borderRadius: kRadius15,
              ),
            ),
            kHeight20,
            Container(
              height: 160,
              decoration: BoxDecoration(
                color: kGreyLight,
                borderRadius: kRadius15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// HELPERS
// ---------------------------------------------------------------------------
String _formatCurrency(num? value) {
  if (value == null) return '₹0';
  try {
    final format = NumberFormat.currency(
      locale: 'en_IN',
      symbol: '₹',
      decimalDigits: value is int || value % 1 == 0 ? 0 : 2,
    );
    return format.format(value);
  } catch (_) {
    return '₹$value';
  }
}

String _formatPercent(num? value) {
  if (value == null) return '0%';
  final d = value.toDouble();
  return '${d.toStringAsFixed(d.truncateToDouble() == d ? 0 : 1)}%';
}
