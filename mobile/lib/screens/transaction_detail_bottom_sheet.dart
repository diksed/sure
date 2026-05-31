import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import '../l10n/app_localizations.dart';
import '../models/transaction.dart';
import '../providers/auth_provider.dart';
import '../services/transactions_service.dart';

class TransactionDetailBottomSheet extends StatefulWidget {
  final Transaction transaction;
  final String accountName;
  final VoidCallback? onTransactionUpdated;

  const TransactionDetailBottomSheet({
    super.key,
    required this.transaction,
    required this.accountName,
    this.onTransactionUpdated,
  });

  static Future<void> show(
    BuildContext context, {
    required Transaction transaction,
    required String accountName,
    VoidCallback? onTransactionUpdated,
  }) {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (_) => TransactionDetailBottomSheet(
        transaction: transaction,
        accountName: accountName,
        onTransactionUpdated: onTransactionUpdated,
      ),
    );
  }

  @override
  State<TransactionDetailBottomSheet> createState() =>
      _TransactionDetailBottomSheetState();
}

class _TransactionDetailBottomSheetState
    extends State<TransactionDetailBottomSheet> {
  late TextEditingController _notesController;
  bool _isSaving = false;
  bool _noteChanged = false;

  @override
  void initState() {
    super.initState();
    _notesController =
        TextEditingController(text: widget.transaction.notes ?? '');
    _notesController.addListener(() {
      final changed = _notesController.text != (widget.transaction.notes ?? '');
      if (changed != _noteChanged) {
        setState(() => _noteChanged = changed);
      }
    });
  }

  @override
  void dispose() {
    _notesController.dispose();
    super.dispose();
  }

  Future<void> _saveNote() async {
    if (!_noteChanged || widget.transaction.id == null) return;

    setState(() => _isSaving = true);

    final authProvider = context.read<AuthProvider>();
    final accessToken = await authProvider.getValidAccessToken();

    if (accessToken == null) {
      if (mounted) {
        setState(() => _isSaving = false);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(AppLocalizations.of(context)!.authenticationFailed),
            backgroundColor: Colors.red,
          ),
        );
      }
      return;
    }

    final result = await TransactionsService().updateTransaction(
      accessToken: accessToken,
      transactionId: widget.transaction.id!,
      notes: _notesController.text.isEmpty ? '' : _notesController.text,
    );

    if (!mounted) return;
    setState(() => _isSaving = false);

    if (result['success'] == true) {
      widget.onTransactionUpdated?.call();
      if (mounted) {
        // Store references before popping — context is invalid after pop
        final messenger = ScaffoldMessenger.of(context);
        final successMsg = AppLocalizations.of(context)!.noteSaved;
        Navigator.of(context).pop();
        messenger.showSnackBar(
          SnackBar(
            content: Text(successMsg),
            backgroundColor: Colors.green,
            behavior: SnackBarBehavior.floating,
          ),
        );
      }
    } else {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(AppLocalizations.of(context)!.failedToSaveNote),
            backgroundColor: Colors.red,
            behavior: SnackBarBehavior.floating,
          ),
        );
      }
    }
  }

  String _formatDate(String dateStr) {
    try {
      final date = DateTime.parse(dateStr);
      return DateFormat('d MMM yyyy').format(date);
    } catch (_) {
      return dateStr;
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final colorScheme = Theme.of(context).colorScheme;
    final transaction = widget.transaction;
    final isIncome = transaction.isIncome;

    // Parse display amount from the server-formatted string
    String displayAmount = transaction.amount.trim();
    displayAmount = displayAmount.replaceAll('−', '-').replaceAll('-', '').trim();

    final amountColor = isIncome ? Colors.green.shade700 : Colors.red.shade700;
    final amountPrefix = isIncome ? '+' : '-';

    return DraggableScrollableSheet(
      initialChildSize: 0.6,
      minChildSize: 0.4,
      maxChildSize: 0.92,
      expand: false,
      builder: (context, scrollController) {
        return Column(
          children: [
            // Drag handle
            Container(
              margin: const EdgeInsets.only(top: 12, bottom: 8),
              width: 40,
              height: 4,
              decoration: BoxDecoration(
                color: colorScheme.onSurfaceVariant.withValues(alpha: 0.3),
                borderRadius: BorderRadius.circular(2),
              ),
            ),

            // Header: name + amount
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 4, 20, 12),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Amount color indicator
                  Container(
                    width: 44,
                    height: 44,
                    decoration: BoxDecoration(
                      color: amountColor.withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(
                      isIncome ? Icons.arrow_downward : Icons.arrow_upward,
                      color: amountColor,
                      size: 22,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          transaction.name,
                          style:
                              Theme.of(context).textTheme.titleMedium?.copyWith(
                                    fontWeight: FontWeight.w600,
                                  ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          '$amountPrefix$displayAmount ${transaction.currency}',
                          style:
                              Theme.of(context).textTheme.titleSmall?.copyWith(
                                    color: amountColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Divider(
              height: 1,
              color: colorScheme.outline.withValues(alpha: 0.2),
            ),

            // Body
            Expanded(
              child: ListView(
                controller: scrollController,
                padding: const EdgeInsets.fromLTRB(20, 16, 20, 32),
                children: [
                  // Info rows
                  _InfoRow(
                    icon: Icons.calendar_today_outlined,
                    label: l10n.dateLabel,
                    value: _formatDate(transaction.date),
                  ),
                  _InfoRow(
                    icon: Icons.account_balance_outlined,
                    label: l10n.accountLabel,
                    value: widget.accountName,
                  ),
                  if (transaction.categoryName != null)
                    _InfoRow(
                      icon: Icons.category_outlined,
                      label: l10n.categoryLabel,
                      value: transaction.categoryName!,
                    ),
                  _InfoRow(
                    icon: isIncome
                        ? Icons.trending_up
                        : Icons.trending_down,
                    label: l10n.typeLabel,
                    value: isIncome ? l10n.income : l10n.expense,
                    valueColor: amountColor,
                  ),

                  const SizedBox(height: 20),

                  // Notes section
                  Text(
                    l10n.noteLabel,
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                          color: colorScheme.onSurfaceVariant,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  const SizedBox(height: 8),
                  TextField(
                    controller: _notesController,
                    decoration: InputDecoration(
                      hintText: l10n.notePlaceholder,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      contentPadding: const EdgeInsets.all(12),
                    ),
                    maxLines: 4,
                    minLines: 3,
                    textInputAction: TextInputAction.newline,
                  ),
                  const SizedBox(height: 12),
                  SizedBox(
                    width: double.infinity,
                    child: FilledButton(
                      onPressed:
                          (_noteChanged && !_isSaving) ? _saveNote : null,
                      child: _isSaving
                          ? const SizedBox(
                              width: 18,
                              height: 18,
                              child: CircularProgressIndicator(
                                strokeWidth: 2,
                                color: Colors.white,
                              ),
                            )
                          : Text(l10n.saveNote),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}

class _InfoRow extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  final Color? valueColor;

  const _InfoRow({
    required this.icon,
    required this.label,
    required this.value,
    this.valueColor,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        children: [
          Icon(icon, size: 18, color: colorScheme.onSurfaceVariant),
          const SizedBox(width: 10),
          Text(
            label,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: colorScheme.onSurfaceVariant,
                ),
          ),
          const Spacer(),
          Text(
            value,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w500,
                  color: valueColor,
                ),
          ),
        ],
      ),
    );
  }
}
