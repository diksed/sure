class Account {
  final String id;
  final String name;
  final String balance;
  final String currency;
  final String? classification;
  final String accountType;

  Account({
    required this.id,
    required this.name,
    required this.balance,
    required this.currency,
    this.classification,
    required this.accountType,
  });

  factory Account.fromJson(Map<String, dynamic> json) {
    return Account(
      id: json['id'].toString(),
      name: json['name'] as String,
      balance: json['balance'] as String,
      currency: json['currency'] as String,
      classification: json['classification'] as String?,
      accountType: json['account_type'] as String,
    );
  }

  bool get isAsset => classification == 'asset';
  bool get isLiability => classification == 'liability';

  double get balanceAsDouble {
    try {
      String s = balance.trim().replaceAll('−', '-');
      final isNegative = s.startsWith('-') || s.endsWith('-');

      // Strip currency symbols, letters, spaces — keep only digits, dots, commas
      final cleaned = s.replaceAll(RegExp(r'[^\d.,]'), '');
      if (cleaned.isEmpty) return 0.0;

      final lastDot = cleaned.lastIndexOf('.');
      final lastComma = cleaned.lastIndexOf(',');

      String numericString;
      if (lastDot != -1 && lastComma != -1) {
        if (lastComma > lastDot) {
          // Turkish/European: "10.826,60" → comma=decimal, dot=thousands
          numericString = cleaned.replaceAll('.', '').replaceAll(',', '.');
        } else {
          // US format: "1,302.00" → dot=decimal, comma=thousands
          numericString = cleaned.replaceAll(',', '');
        }
      } else if (lastComma != -1) {
        final afterComma = cleaned.substring(lastComma + 1);
        // 3 digits after comma → thousands separator ("1,302"), else decimal ("1302,60")
        numericString = afterComma.length == 3
            ? cleaned.replaceAll(',', '')
            : cleaned.replaceAll(',', '.');
      } else {
        numericString = cleaned;
      }

      final value = double.parse(numericString);
      return isNegative ? -value : value;
    } catch (e) {
      return 0.0;
    }
  }

  String get displayAccountType {
    switch (accountType) {
      case 'depository':
        return 'Bank Account';
      case 'credit_card':
        return 'Credit Card';
      case 'investment':
        return 'Investment';
      case 'loan':
        return 'Loan';
      case 'property':
        return 'Property';
      case 'vehicle':
        return 'Vehicle';
      case 'crypto':
        return 'Crypto';
      case 'other_asset':
        return 'Other Asset';
      case 'other_liability':
        return 'Other Liability';
      default:
        return accountType;
    }
  }
}
