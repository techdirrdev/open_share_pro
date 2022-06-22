import 'package:flutter/material.dart';
import 'package:open_share_pro/open.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Open.browser(url: "https://techdirr.com");
                },
                child: const Text("Open Browser")),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  Open.phone(phoneNumber: "+919426636120");
                },
                child: const Text("Open Phone Dial")),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  Open.mail(
                      toAddress: "dev@techdirr.com",
                      subject: "techdirr",
                      body: "techdirr dev");
                },
                child: const Text("Send Mail")),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  Open.whatsApp(
                      whatsAppNumber: "919426636120", text: "techdirr");
                },
                child: const Text("Send WhatsApp")),
            const SizedBox(height: 20)
          ],
        ),
      ),
    );
  }
}
