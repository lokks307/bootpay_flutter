import 'package:bootpay/constant/browser_open_type.dart';
import 'package:bootpay/constant/browser_type.dart';

class Browser {
  const Browser({
    required this.browserType,
    required this.browserOpenType,
  });

  final BrowserType browserType;
  final BrowserOpenType browserOpenType;

  Browser copyWith({
    BrowserType? browserType,
    BrowserOpenType? browserOpenType,
  }) {
    return Browser(
      browserType: browserType ?? this.browserType,
      browserOpenType: browserOpenType ?? this.browserOpenType,
    );
  }

  String toString() {
    return "{browser: '${browserType.label}', open_type: '${browserOpenType.label}'}";
  }
}
