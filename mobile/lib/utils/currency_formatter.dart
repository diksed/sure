import 'package:intl/intl.dart';

class CurrencyFormatter {
  static String _localeForCurrency(String currency) {
    switch (currency.toUpperCase()) {
      case 'TRY':
        return 'tr_TR';
      default:
        return 'en_US';
    }
  }

  static String symbolForCurrency(String currency) {
    switch (currency.toUpperCase()) {
      case 'USD':
        return '\$';
      case 'TWD':
        return '\$';
      case 'BTC':
        return '₿';
      case 'ETH':
        return 'Ξ';
      case 'EUR':
        return '€';
      case 'GBP':
        return '£';
      case 'JPY':
        return '¥';
      case 'CNY':
        return '¥';
      case 'TRY':
        return '₺';
      default:
        return '';
    }
  }

  // Format a number with locale-aware group/decimal separators, no symbol.
  // Pattern uses standard ICU notation; locale determines actual separator chars.
  // For TRY (tr_TR): 12512.54 → "12.512,54"
  // For USD (en_US): 12512.54 → "12,512.54"
  static String format(
    double amount,
    String currency, {
    String pattern = '#,##0.########',
  }) {
    final locale = _localeForCurrency(currency);
    return NumberFormat(pattern, locale).format(amount);
  }

  // Format with currency symbol prepended, no trailing currency code.
  // Uses 0 decimal places for amounts ≥ 1, 4 decimal places for micro amounts.
  static String formatWithSymbol(double amount, String currency) {
    final symbol = symbolForCurrency(currency);
    final isSmallAmount = amount.abs() < 1 && amount != 0;
    final pattern = isSmallAmount ? '#,##0.0000' : '#,##0';
    return '$symbol${format(amount, currency, pattern: pattern)} $currency';
  }
}
