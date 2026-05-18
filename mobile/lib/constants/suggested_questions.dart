import 'package:flutter/material.dart';

import '../l10n/app_localizations.dart';

List<({IconData icon, String text})> getSuggestedQuestions(
        AppLocalizations l10n) =>
    [
      (icon: Icons.account_balance_wallet_outlined, text: l10n.suggestedQ1),
      (icon: Icons.show_chart, text: l10n.suggestedQ2),
      (icon: Icons.savings_outlined, text: l10n.suggestedQ3),
      (icon: Icons.receipt_long_outlined, text: l10n.suggestedQ4),
    ];
