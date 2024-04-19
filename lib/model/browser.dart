// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:bootpay/constant/browser_open_type.dart';
import 'package:bootpay/constant/browser_type.dart';

class Browser {
  const Browser({
    required this.browserType,
    required this.browserOpenType,
  });

  final BrowserType browserType;
  final BrowserOpenType browserOpenType;

  // Browser.fromJson(Map<String, dynamic> json) {
  //   browser = json["browser"];
  //   openType = json["open_type"];
  // }

  // Map<String, dynamic> toJson() => {
  //       "browser": this.browser,
  //       "open_type": this.openType,
  //     };

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
