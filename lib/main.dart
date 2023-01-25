import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:trainman_booking_sdk/trainman_booking_sdk.dart';

void main() {
  runApp(const LoginSection());
}

class LoginSection extends StatelessWidget implements TmBookingInterface {
  const LoginSection({Key? key}) : super(key: key);
  static const platform = MethodChannel('tmChannel');
  @override
  Widget build(BuildContext context) {
    context = context;

    return InitiateTmBookingSdk(tmBookingInterface: this,authToken: "aman");
  }

  Future<void> handleMethod(MethodCall call) async {
    switch (call.method) {
      case "login":
        print(call.arguments);
        break;
      default:
        throw PlatformException(
          code: 'Unimplemented',
          details: "The app doesn't implement ${call.method} method",
        );
    }
  }

  @override
  void backPressed(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  void openLoginPage(String message, String source) {
    InitiateTmBookingSdk.updateAccessToken("aman", "kumar");
  }

  @override
  void refreshToken(String? pastAuthToken, String source) {
    log(source);
  }

  @override
  void openCallSupport(String? mobileNum, String source) {
    // TODO: implement openCallSupport
  }

  @override
  void openEmailSupport(String? emailId, String source) {

  }

  @override
  void downloadTicketWithUrl(String? url, String source) {
    // TODO: implement downloadTicketWithUrl
  }

}
