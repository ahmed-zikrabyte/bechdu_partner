import 'package:bechdu_partner/application/business_logic/analytics/analytics_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScreenAnalytics extends StatelessWidget {
  const ScreenAnalytics({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Analytics'),
      ),
      body: BlocBuilder<AnalyticsBloc, AnalyticsState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (state.hasError) {
            return Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(state.message ?? 'Failed to load analytics'),
                  const SizedBox(height: 12),
                  ElevatedButton(
                    onPressed: () {
                      context.read<AnalyticsBloc>().add(
                            const AnalyticsEvent.fetchAnalytics(
                              forceRefresh: true,
                            ),
                          );
                    },
                    child: const Text('Retry'),
                  ),
                ],
              ),
            );
          }

          final analytics = state.analytics;

          if (analytics == null) {
            return const Center(
              child: Text('No analytics data available'),
            );
          }

          final partner = analytics.partner;

          return SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  elevation: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          partner?.name ?? 'Partner Name',
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text('Partner ID: ${partner?.partnerId ?? '-'}'),
                        Text('City: ${partner?.city ?? '-'}'),
                        Text('Status: ${partner?.status ?? '-'}'),
                        Text(
                          'Total Executives: ${partner?.totalExecutives ?? 0}',
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Performance Overview',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 12),
                _buildKpiCard(
                  title: 'Leads Received',
                  value: '${analytics.kpis?.leadsReceived ?? 0}',
                  subtitle: 'Assigned: ${analytics.kpis?.leadsAssigned ?? 0}',
                  icon: Icons.people_outline,
                ),
                _buildKpiCard(
                  title: 'Pickup Completed',
                  value: '${analytics.kpis?.pickupCompleted ?? 0}',
                  subtitle:
                      'Conversion: ${analytics.kpis?.conversionRate ?? 0}%',
                  icon: Icons.check_circle_outline,
                ),
                _buildKpiCard(
                  title: 'Pickup Cancelled',
                  value: '${analytics.kpis?.pickupCancelled ?? 0}',
                  subtitle:
                      'Cancellation: ${analytics.kpis?.cancellationRate ?? 0}%',
                  icon: Icons.cancel_outlined,
                ),
                _buildKpiCard(
                  title: 'Pending Pickups',
                  value: '${analytics.kpis?.pickupPending ?? 0}',
                  subtitle: 'Overdue: ${analytics.kpis?.overduePickups ?? 0}',
                  icon: Icons.pending_actions,
                ),
                _buildKpiCard(
                  title: 'Transaction Value',
                  value: '₹${analytics.kpis?.totalTransactionValue ?? 0}',
                  subtitle:
                      'Revenue: ₹${analytics.kpis?.applicableRevenue ?? 0}',
                  icon: Icons.currency_rupee,
                ),
                _buildKpiCard(
                  title: 'Average Pickup Time',
                  value: analytics.kpis?.avgPickupTimeText ?? '-',
                  subtitle:
                      'Contact Time: ${analytics.kpis?.avgResponseTimeText ?? '-'}',
                  icon: Icons.timer_outlined,
                ),
                const SizedBox(height: 20),
                const Text(
                  'Lead Conversion Funnel',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 12),
                ...(analytics.funnel ?? []).map((item) {
                  return Card(
                    margin: const EdgeInsets.only(bottom: 8),
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(child: Text(item.stage ?? '-')),
                              Text('${item.count ?? 0}'),
                            ],
                          ),
                          const SizedBox(height: 8),
                          LinearProgressIndicator(
                            value: ((item.pct ?? 0) / 100).clamp(0.0, 1.0),
                          ),
                          const SizedBox(height: 4),
                          Text('${item.pct ?? 0}%'),
                        ],
                      ),
                    ),
                  );
                }),
                // ANALYTICS TRENDS
                const SizedBox(height: 20),

                const Text(
                  'Analytics Trends',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 12),

                if (analytics.trends == null || analytics.trends!.isEmpty)
                  const Card(
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Center(
                        child: Text('No trend data available'),
                      ),
                    ),
                  )
                else
                  ...(analytics.trends ?? []).map(
                    (item) => Card(
                      margin: const EdgeInsets.only(bottom: 8),
                      child: ListTile(
                        title: Text(item.date ?? '-'),
                        subtitle: Text(
                          'Received: ${item.received ?? 0} | '
                          'Completed: ${item.completed ?? 0} | '
                          'Cancelled: ${item.cancelled ?? 0}',
                        ),
                        trailing: Text(
                          '₹${item.value ?? 0}',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),

                // PICKUP STATUS DISTRIBUTION
                const SizedBox(height: 20),

                const Text(
                  'Pickup Status Distribution',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 12),

                _buildStatusCard(
                  'New',
                  analytics.statusDistribution?.newCount ?? 0,
                ),

                _buildStatusCard(
                  'Processing',
                  analytics.statusDistribution?.processing ?? 0,
                ),

                _buildStatusCard(
                  'Completed',
                  analytics.statusDistribution?.completed ?? 0,
                ),

                _buildStatusCard(
                  'Cancelled',
                  analytics.statusDistribution?.cancelled ?? 0,
                ),

                _buildStatusCard(
                  'Rescheduled',
                  analytics.statusDistribution?.rescheduled ?? 0,
                ),

                _buildStatusCard(
                  'Other',
                  analytics.statusDistribution?.other ?? 0,
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  // KPI CARD 
  Widget _buildKpiCard({
    required String title,
    required String value,
    required String subtitle,
    required IconData icon,
  }) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      elevation: 2,
      child: ListTile(
        leading: Icon(icon, size: 30),
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
        subtitle: Text(subtitle),
        trailing: Text(
          value,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  // STATUS CARD
  Widget _buildStatusCard(String title, int count) {
    return Card(
      margin: const EdgeInsets.only(bottom: 8),
      child: ListTile(
        title: Text(title),
        trailing: Text(
          '$count',
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
