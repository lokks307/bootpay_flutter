enum PayMethod {
  phone,
  card,
  bank,
  vbank,
  easy,
  easyRebill,
  cardRebill,
  kakaoPay,
  naverPay,
  payco,
  toss,
  easyCard,
  easyCardRebill,
  auth,
  digitalCard,
  digitalBank,
  digitalCardRebill,
  samsungPay,
  applePay,
  cultureland,
  happymoney,
  bookAndLife,
  smartCulture,
}

extension PayMethodExt on PayMethod {
  String get label {
    switch (this) {
      case PayMethod.phone:
        return 'phone';
      case PayMethod.card:
        return 'card';
      case PayMethod.bank:
        return 'bank';
      case PayMethod.vbank:
        return 'vbank';
      case PayMethod.easy:
        return 'easy';
      case PayMethod.easyRebill:
        return 'easy_rebill';
      case PayMethod.cardRebill:
        return 'card_rebill';
      case PayMethod.kakaoPay:
        return 'kakaopay';
      case PayMethod.naverPay:
        return 'naverpay';
      case PayMethod.payco:
        return 'payco';
      case PayMethod.toss:
        return 'toss';
      case PayMethod.easyCard:
        return 'easy_card';
      case PayMethod.easyCardRebill:
        return 'easy_card_rebill';
      case PayMethod.auth:
        return 'auth';
      case PayMethod.digitalCard:
        return 'digital_card';
      case PayMethod.digitalBank:
        return 'digital_bank';
      case PayMethod.digitalCardRebill:
        return 'digital_card_rebill';
      case PayMethod.samsungPay:
        return 'samsungpay';
      case PayMethod.applePay:
        return 'applepay';
      case PayMethod.cultureland:
        return 'cultureland';
      case PayMethod.happymoney:
        return 'happymoney';
      case PayMethod.bookAndLife:
        return 'bookandlife';
      case PayMethod.smartCulture:
        return 'smartculture';
    }
  }
}
