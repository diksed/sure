import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../services/biometric_service.dart';

class BiometricLockScreen extends StatefulWidget {
  const BiometricLockScreen({
    super.key,
    required this.onUnlocked,
    this.onLogout,
  });

  final VoidCallback onUnlocked;
  final VoidCallback? onLogout;

  @override
  State<BiometricLockScreen> createState() => _BiometricLockScreenState();
}

class _BiometricLockScreenState extends State<BiometricLockScreen> {
  bool _isAuthenticating = false;

  @override
  void initState() {
    super.initState();
    // Auto-trigger biometric prompt on first show.
    WidgetsBinding.instance.addPostFrameCallback((_) => _authenticate());
  }

  Future<void> _authenticate() async {
    if (!mounted || _isAuthenticating) return;
    setState(() => _isAuthenticating = true);

    final success = await BiometricService.instance.authenticate();

    if (!mounted) return;
    setState(() => _isAuthenticating = false);

    if (success) {
      widget.onUnlocked();
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(AppLocalizations.of(context)!.authFailedTryAgain)),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.lock_outline,
                size: 72,
                color: colorScheme.primary,
              ),
              const SizedBox(height: 24),
              Text(
                l10n.appLocked,
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
              ),
              const SizedBox(height: 8),
              Text(
                l10n.authenticateToContinue,
                style: TextStyle(color: colorScheme.onSurfaceVariant),
              ),
              const SizedBox(height: 40),
              FilledButton.icon(
                onPressed: _isAuthenticating ? null : _authenticate,
                icon: const Icon(Icons.fingerprint),
                label: Text(_isAuthenticating ? l10n.authenticating : l10n.unlock),
                style: FilledButton.styleFrom(
                  minimumSize: const Size(200, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              if (widget.onLogout != null) ...[
                const SizedBox(height: 16),
                TextButton(
                  onPressed: widget.onLogout,
                  child: Text(l10n.logOut),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
