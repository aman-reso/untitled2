
import 'package:flutter/material.dart';
import 'package:trainman_booking_sdk/trainman_booking_sdk.dart';
import 'package:trainman_booking_sdk/src/source/models/pdfDataModel.dart';

class EntryPage extends StatelessWidget {
  const EntryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text("Traiman Booking sdk"),),
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
        ],      // ← 7
      ),
    );
  }
}


class LoginSection extends StatelessWidget implements TmBookingInterface {
  const LoginSection({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    context = context;

    return InitiateTmBookingSdk(tmBookingInterface: this,authToken: "aman");
  }

  @override
  void backPressed(BuildContext context) {

  }

  @override
  void downloadTicketWithUrl(PdfDataModel? pdfDataModel, String source) {

  }

  @override
  void openCallSupport(String? mobileNum, String source) {

  }

  @override
  void openEmailSupport(String? emailId, String source) {

  }

  @override
  void openLoginPage(String message, String source) {

  }

  @override
  void openUrlExternally(String? url, String source) {

  }

  @override
  void refreshToken(String? pastAuthToken, String source) {

  }




}


