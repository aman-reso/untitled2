import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:trainman_booking_sdk/trainman_booking_sdk.dart';

class EntryPage extends StatelessWidget {
  const EntryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Trainman Booking sdk"),
      ),
      body: Column(
        children: [
          const Text('Demo of Trainman Booking sdk'), // ← Change to this.
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LoginSection()),
              );
            },
            child: const Text('Open Booking sdk'),
          ),
        ], // ← 7
      ),
    );
  }
}

class LoginSection extends StatelessWidget implements TmBookingInterface {
  const LoginSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context = context;
    InitiateTmBookingSdk.setSdkEnvironment(Env.staging);
    return InitiateTmBookingSdk(
      tmBookingInterface: this,
      source: Source.home,
      data: null,
    );
  }

  @override
  void backPressed(BuildContext context) {
    Fluttertoast.showToast(
        msg: "Back button callback",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  @override
  void downloadTicketWithUrl(PdfDataModel? pdfDataModel, String source) {
    Fluttertoast.showToast(
        msg: "download ticket",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  @override
  void openCallSupport(String? mobileNum, String source) {
    Fluttertoast.showToast(
        msg: "call",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  @override
  void openEmailSupport(String? emailId, String source) {
    Fluttertoast.showToast(
        msg: "email",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  @override
  void openLoginPage(String message, String source) {
    Fluttertoast.showToast(
        msg: "login page",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  @override
  void openUrlExternally(String? url, String source) {
    Fluttertoast.showToast(
        msg: "external url",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  @override
  void refreshToken(String? pastAuthToken, String source) {
    Fluttertoast.showToast(
        msg: "Refresh token",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }
}
