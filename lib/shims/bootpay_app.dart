
import 'dart:ui';

import 'package:bootpay_webview_flutter/webview_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../bootpay.dart';
import '../bootpay_api.dart';
import '../bootpay_webview.dart';
import '../model/payload.dart';
import 'package:fluttertoast/fluttertoast.dart';
// import 'package:modal_bottom_sheet/modal_bottom_sheet.dart' as BottomSheet;

class WebViewRoute extends StatelessWidget {

  BootpayWebView? webView;
  DateTime? currentBackPressTime = DateTime.now();

  WebViewRoute(this.webView);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return WillPopScope(

      child: Scaffold(
          body: SafeArea(child: Container(child: webView!))
      ),
      onWillPop: () async {
        DateTime now = DateTime.now();
        if (now.difference(currentBackPressTime!) > Duration(seconds: 2)) {
          currentBackPressTime = now;
          if(webView?.onCloseHardware != null) webView?.onCloseHardware!();
          Fluttertoast.showToast(msg: "\'뒤로\' 버튼을 한번 더 눌러주세요.");
          return Future.value(false);
        }
        return Future.value(true);
      },
    );
  }
}

class BootpayPlatform extends BootpayApi{

  BootpayWebView? webView;

  @override
  void request(
      {
        Key? key,
        BuildContext? context,
        Payload? payload,
        bool? showCloseButton,
        Widget? closeButton,
        BootpayDefaultCallback? onCancel,
        BootpayDefaultCallback? onError,
        BootpayCloseCallback? onClose,
        BootpayCloseCallback? onCloseHardware,
        BootpayDefaultCallback? onReady,
        BootpayConfirmCallback? onConfirm,
        BootpayDefaultCallback? onDone
      }) {

    webView = BootpayWebView(
      payload: payload,
      showCloseButton: showCloseButton,
      key: key,
      closeButton: closeButton,
      onCancel: onCancel,
      onError: onError,
      onClose: onClose,
      onCloseHardware: onCloseHardware,
      onReady: onReady,
      onConfirm: onConfirm,
      onDone: onDone,
    );

    if(context == null) return;

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => WebViewRoute(webView)),
    );
  }

  @override
  void removePaymentWindow() {
    if(webView != null) {
      webView!.removePaymentWindow();
    }
  }

  @override
  void dismiss(BuildContext context) {
    if(webView != null) {
      Navigator.of(context).pop();
    }
  }

  @override
  void transactionConfirm(String data) {
    if(webView != null) webView!.transactionConfirm(data);
  }
}