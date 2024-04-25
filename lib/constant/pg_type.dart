enum PGType {
  hecto,
  inicis,
  kcp,
  nicePay,
  danal,
  toss,
  payLetter,
  easyPay,
  kakao,
  payco,
  settleBank,
  tPay,
  welcome,
  smartro,
  payApp,
  kiwoom,
  naverPay,
  paypal,
  stripe,
}

extension PGTypeExt on PGType {
  String get label {
    switch (this) {
      case PGType.hecto:
        return 'hecto';
      case PGType.inicis:
        return 'inicis';
      case PGType.kcp:
        return 'kcp';
      case PGType.nicePay:
        return 'nicepay';
      case PGType.danal:
        return 'danal';
      case PGType.toss:
        return 'toss';
      case PGType.payLetter:
        return 'payletter';
      case PGType.easyPay:
        return 'easypay';
      case PGType.kakao:
        return 'kakao';
      case PGType.payco:
        return 'payco';
      case PGType.settleBank:
        return 'settlebank';
      case PGType.tPay:
        return 'tpay';
      case PGType.welcome:
        return 'welcome';
      case PGType.smartro:
        return 'smartro';
      case PGType.payApp:
        return 'payapp';
      case PGType.kiwoom:
        return 'kiwoom';
      case PGType.naverPay:
        return 'naverpay';
      case PGType.paypal:
        return 'paypal';
      case PGType.stripe:
        return 'stripe';
    }
  }
}
