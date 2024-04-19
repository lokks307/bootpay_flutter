import 'dart:io';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

import '../bootpay_webview.dart';
import '../controller/debounce_close_controller.dart';

class BootpayAppPage extends StatefulWidget {
  const BootpayAppPage(this.webView, this.padding);

  final BootpayWebView? webView;
  final double? padding;

  @override
  _BootpayAppPageState createState() => _BootpayAppPageState();
}

class _BootpayAppPageState extends State<BootpayAppPage> {
  DebounceCloseController closeController = Get.find();
  DateTime? currentBackPressTime = DateTime.now();
  bool isProgressShow = false;

  @override
  void initState() {
    super.initState();

    closeController.isFireCloseEvent = false;
    closeController.isDebounceShow = true;

    widget.webView?.onProgressShow = (isShow) {
      setState(() {
        isProgressShow = isShow;
      });
    };
  }

  clickCloseButton() {
    if (widget.webView?.onCancel != null)
      widget.webView?.onCancel!(
          '{"action":"BootpayCancel","status":-100,"message":"사용자에 의한 취소"}');
    if (widget.webView?.onClose != null) widget.webView?.onClose!();
  }

  void bootpayClose() {
    if (closeController.isFireCloseEvent == true) return;
    closeController.bootpayClose(this.widget.webView?.onClose);
    closeController.isFireCloseEvent = false;
  }

  @override
  void dispose() {
    bootpayClose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: _buildContent(),
      ),
    );
  }

  Widget _buildContent() {
    double paddingValue = widget.padding ?? 0;
    if (Platform.isAndroid) {
      return _buildAndroidView(paddingValue);
    } else if (Platform.isIOS) {
      return _buildIOSView(paddingValue);
    }
    return const SizedBox.shrink();
  }

  Widget _buildAndroidView(double padding) {
    return WillPopScope(
      onWillPop: () async {
        DateTime now = DateTime.now();
        if (now.difference(currentBackPressTime!) > Duration(seconds: 2)) {
          currentBackPressTime = now;
          Fluttertoast.showToast(msg: "\'뒤로\' 버튼을 한번 더 눌러주세요.");
          return Future.value(false);
        }
        return Future.value(true);
      },
      child: Padding(
        padding: EdgeInsets.all(padding),
        child: widget.webView ?? Container(),
      ),
    );
  }

  Widget _buildIOSView(double padding) {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.all(padding),
          child: widget.webView!,
        ),
        if (isProgressShow) CircularProgressIndicator(color: Colors.black)
      ],
    );
  }
}
