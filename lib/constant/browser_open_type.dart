import 'package:bootpay/constant/bootpay_constant.dart';

enum BrowserOpenType {
  popup,
  iframe,
  redirect,
}

extension BrowserOpenTypeExt on BrowserOpenType {
  String get label {
    switch (this) {
      case BrowserOpenType.popup:
        return BootpayConstant.POPUP;
      case BrowserOpenType.iframe:
        return BootpayConstant.IFRAME;
      case BrowserOpenType.redirect:
        return BootpayConstant.REDIRECT;
    }
  }
}
