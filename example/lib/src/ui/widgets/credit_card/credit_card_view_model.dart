class CreditCardViewModel {
  String getNumber(String? number) {
    return number ?? 'xxxx xxxx xxxx xxxx'.toUpperCase();
  }

  String getCardHolder(String? cardHolder) {
    return cardHolder ?? 'card holder'.toUpperCase();
  }

  String getExpiryMonth(int? expiryMonth) {
    final month = '${_handleDate(expiryMonth) ?? 'xx'}';
    return month.padLeft(2, '0').toUpperCase();
  }

  String getExpiryYear(int? expiryYear) {
    final year = '${_handleDate(expiryYear) ?? 'xxxx'}';
    return year.toUpperCase();
  }

  int? _handleDate(int? date) {
    if (date == 0) return null;
    return date;
  }
}
