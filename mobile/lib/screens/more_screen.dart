import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sure_mobile/l10n/app_localizations.dart';
import '../providers/auth_provider.dart';
import 'calendar_screen.dart';
import 'chat_list_screen.dart';
import 'recent_transactions_screen.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  Future<bool> _checkAndEnableAi(BuildContext context) async {
    final authProvider = Provider.of<AuthProvider>(context, listen: false);
    if (authProvider.aiEnabled) return true;

    final l10n = AppLocalizations.of(context)!;
    final shouldEnable = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(l10n.turnOnAiChat),
        content: Text(l10n.aiChatDisabledPrompt),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: Text(l10n.notNow),
          ),
          FilledButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: Text(l10n.turnOnAi),
          ),
        ],
      ),
    );

    if (shouldEnable != true) return false;

    final enabled = await authProvider.enableAi();

    if (!enabled && context.mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(authProvider.errorMessage ?? l10n.unableToEnableAi),
          backgroundColor: Colors.red,
        ),
      );
    }

    return enabled;
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      body: ListView(
        children: [
          _buildMenuItem(
            context: context,
            icon: Icons.chat_bubble_outline,
            title: l10n.assistant,
            subtitle: l10n.startNewConversation,
            onTap: () async {
              final canNavigate = await _checkAndEnableAi(context);
              if (canNavigate && context.mounted) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ChatListScreen(),
                  ),
                );
              }
            },
          ),
          Divider(height: 1, color: colorScheme.outlineVariant),
          _buildMenuItem(
            context: context,
            icon: Icons.calendar_month,
            title: l10n.accountCalendar,
            subtitle: l10n.viewMonthlyChanges,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CalendarScreen(),
                ),
              );
            },
          ),
          Divider(height: 1, color: colorScheme.outlineVariant),
          _buildMenuItem(
            context: context,
            icon: Icons.receipt_long,
            title: l10n.recentTransactions,
            subtitle: l10n.viewRecentTransactions,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const RecentTransactionsScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildMenuItem({
    required BuildContext context,
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    final colorScheme = Theme.of(context).colorScheme;

    return ListTile(
      leading: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: colorScheme.primaryContainer,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Icon(
          icon,
          color: colorScheme.onPrimaryContainer,
        ),
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleMedium,
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(color: colorScheme.onSurfaceVariant),
      ),
      trailing: Icon(
        Icons.chevron_right,
        color: colorScheme.onSurfaceVariant,
      ),
      onTap: onTap,
    );
  }
}
