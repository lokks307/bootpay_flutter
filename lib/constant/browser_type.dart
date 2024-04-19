import 'package:bootpay/constant/bootpay_constant.dart';

enum BrowserType {
  instagram,
  kakaotalk,
  facebook,
  naver,
  mobile_safari,
  mobile_chrome,
}

extension BrowserTypeExt on BrowserType {
  String get label {
    switch (this) {
      case BrowserType.instagram:
        return BootpayConstant.INSTAGRAM;
      case BrowserType.kakaotalk:
        return BootpayConstant.KAKAOTALK;
      case BrowserType.facebook:
        return BootpayConstant.FACEBOOK;
      case BrowserType.naver:
        return BootpayConstant.NAVER;
      case BrowserType.mobile_safari:
        return BootpayConstant.MOBILE_SAFARI;
      case BrowserType.mobile_chrome:
        return BootpayConstant.MOBILE_CHROME;
    }
  }
}
