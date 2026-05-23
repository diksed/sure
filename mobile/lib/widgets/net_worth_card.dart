import 'package:flutter/material.dart';
import 'package:sure_mobile/l10n/app_localizations.dart';
import 'package:sure_mobile/services/preferences_service.dart';

enum AccountFilter { all, assets, liabilities }

class NetWorthCard extends StatelessWidget {
  final Map<String, double> assetTotalsByCurrency;
  final Map<String, double> liabilityTotalsByCurrency;
  final AccountFilter currentFilter;
  final ValueChanged<AccountFilter> onFilterChanged;
  final String Function(String currency, double amount) formatAmount;
  final String? netWorthFormatted;
  final bool isStale;

  const NetWorthCard({
    super.key,
    required this.assetTotalsByCurrency,
    required this.liabilityTotalsByCurrency,
    required this.currentFilter,
    required this.onFilterChanged,
    required this.formatAmount,
    this.netWorthFormatted,
    this.isStale = false,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final l10n = AppLocalizations.of(context)!;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: colorScheme.surfaceContainerHighest.withValues(alpha: 0.5),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: colorScheme.outline.withValues(alpha: 0.2),
        ),
      ),
      child: Column(
        children: [
          // Net Worth Section
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 14, 16, 12),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      l10n.netWorth,
                      style: Theme.of(context).textTheme.labelMedium?.copyWith(
                            color: colorScheme.onSurfaceVariant,
                          ),
                    ),
                    if (isStale) ...[
                      const SizedBox(width: 6),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 6, vertical: 1),
                        decoration: BoxDecoration(
                          color: colorScheme.secondaryContainer
                              .withValues(alpha: 0.5),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Text(
                          l10n.outdated,
                          style:
                              Theme.of(context).textTheme.labelSmall?.copyWith(
                                    color: colorScheme.secondary,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ),
                    ],
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  netWorthFormatted ?? '--',
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: isStale
                            ? colorScheme.secondary
                            : colorScheme.onSurface,
                      ),
                ),
              ],
            ),
          ),

          // Divider
          Divider(
            height: 1,
            color: colorScheme.outline.withValues(alpha: 0.2),
          ),

          // Assets & Liabilities Row
          IntrinsicHeight(
            child: Row(
              children: [
                // Assets
                Expanded(
                  child: _FilterButton(
                    totals: assetTotalsByCurrency,
                    color: Colors.green,
                    isSelected: currentFilter == AccountFilter.assets,
                    onTap: () {
                      if (currentFilter == AccountFilter.assets) {
                        onFilterChanged(AccountFilter.all);
                      } else {
                        onFilterChanged(AccountFilter.assets);
                      }
                    },
                    onLongPress: () => _showCurrencyBreakdown(
                      context,
                      l10n.assets,
                      assetTotalsByCurrency,
                      Colors.green,
                    ),
                    formatAmount: formatAmount,
                    persistenceKey: 'assets',
                  ),
                ),

                // Vertical Divider
                VerticalDivider(
                  width: 1,
                  color: colorScheme.outline.withValues(alpha: 0.2),
                ),

                // Liabilities
                Expanded(
                  child: _FilterButton(
                    totals: liabilityTotalsByCurrency,
                    color: Colors.red,
                    isSelected: currentFilter == AccountFilter.liabilities,
                    onTap: () {
                      if (currentFilter == AccountFilter.liabilities) {
                        onFilterChanged(AccountFilter.all);
                      } else {
                        onFilterChanged(AccountFilter.liabilities);
                      }
                    },
                    onLongPress: () => _showCurrencyBreakdown(
                      context,
                      l10n.liabilities,
                      liabilityTotalsByCurrency,
                      Colors.red,
                    ),
                    formatAmount: formatAmount,
                    persistenceKey: 'liabilities',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _showCurrencyBreakdown(
    BuildContext context,
    String title,
    Map<String, double> totals,
    Color color,
  ) {
    final sortedEntries = totals.entries.toList()
      ..sort((a, b) => b.value.abs().compareTo(a.value.abs()));

    if (sortedEntries.isEmpty) return;

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) {
        final colorScheme = Theme.of(context).colorScheme;
        return Padding(
          padding: const EdgeInsets.fromLTRB(24, 16, 24, 32),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Handle bar
              Container(
                width: 40,
                height: 4,
                decoration: BoxDecoration(
                  color: colorScheme.onSurfaceVariant.withValues(alpha: 0.3),
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              const SizedBox(height: 20),

              // Title with icon
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    title == AppLocalizations.of(context)!.assets
                        ? Icons.trending_up
                        : Icons.trending_down,
                    color: color,
                    size: 20,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    title,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: color,
                        ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Currency list (scrollable when many entries)
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: MediaQuery.sizeOf(context).height * 0.5,
                ),
                child: ListView.separated(
                  shrinkWrap: true,
                  itemCount: sortedEntries.length,
                  separatorBuilder: (_, __) => const SizedBox(height: 8),
                  itemBuilder: (context, index) {
                    final entry = sortedEntries[index];
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          entry.key,
                          style:
                              Theme.of(context).textTheme.titleMedium?.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: colorScheme.onSurfaceVariant,
                                  ),
                        ),
                        Text(
                          formatAmount(entry.key, entry.value),
                          style:
                              Theme.of(context).textTheme.titleMedium?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _FilterButton extends StatefulWidget {
  final Map<String, double> totals;
  final Color color;
  final bool isSelected;
  final VoidCallback onTap;
  final VoidCallback onLongPress;
  final String Function(String currency, double amount) formatAmount;
  final String persistenceKey;

  const _FilterButton({
    required this.totals,
    required this.color,
    required this.isSelected,
    required this.onTap,
    required this.onLongPress,
    required this.formatAmount,
    required this.persistenceKey,
  });

  @override
  State<_FilterButton> createState() => _FilterButtonState();
}

class _FilterButtonState extends State<_FilterButton> {
  late final FixedExtentScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = FixedExtentScrollController();
    _restoreScrollPosition();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  Future<void> _restoreScrollPosition() async {
    final savedCurrency = await PreferencesService.instance
        .getNetWorthCurrency(widget.persistenceKey);
    if (!mounted || savedCurrency == null) return;

    final sortedEntries = widget.totals.entries.toList()
      ..sort((a, b) => b.value.abs().compareTo(a.value.abs()));
    final idx = sortedEntries.indexWhere((e) => e.key == savedCurrency);
    if (idx > 0) {
      _scrollController.jumpToItem(idx);
    }
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    final sortedEntries = widget.totals.entries.toList()
      ..sort((a, b) => b.value.abs().compareTo(a.value.abs()));

    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: widget.color.withValues(alpha: 0.6),
            width: 3,
          ),
        ),
      ),
      child: Material(
        color: widget.isSelected
            ? widget.color.withValues(alpha: 0.1)
            : Colors.transparent,
        child: GestureDetector(
          onTap: widget.onTap,
          onLongPress: sortedEntries.isNotEmpty ? widget.onLongPress : null,
          behavior: HitTestBehavior.opaque,
          child: SizedBox(
            height: 48,
            child: sortedEntries.isEmpty
                ? Center(
                    child: Text(
                      '--',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: colorScheme.onSurface,
                          ),
                    ),
                  )
                : sortedEntries.length == 1
                    ? Center(
                        child: Text(
                          widget.formatAmount(sortedEntries.first.key,
                              sortedEntries.first.value),
                          style:
                              Theme.of(context).textTheme.titleMedium?.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: colorScheme.onSurface,
                                  ),
                        ),
                      )
                    : NotificationListener<ScrollNotification>(
                        onNotification: (_) => true,
                        child: ListWheelScrollView.useDelegate(
                          controller: _scrollController,
                          itemExtent: 32,
                          diameterRatio: 1.5,
                          perspective: 0.003,
                          physics: const FixedExtentScrollPhysics(),
                          onSelectedItemChanged: (index) {
                            PreferencesService.instance.setNetWorthCurrency(
                              widget.persistenceKey,
                              sortedEntries[index].key,
                            );
                          },
                          childDelegate: ListWheelChildBuilderDelegate(
                            childCount: sortedEntries.length,
                            builder: (context, index) {
                              final entry = sortedEntries[index];
                              return Center(
                                child: Text(
                                  widget.formatAmount(entry.key, entry.value),
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium
                                      ?.copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: colorScheme.onSurface,
                                      ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
          ),
        ),
      ),
    );
  }
}
