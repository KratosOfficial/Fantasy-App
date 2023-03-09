import 'package:flutter/material.dart';
import 'Components/wallet body.dart';
import 'Components/walletheader.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({Key? key}) : super(key: key);

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          backgroundColor: Color(0xffC41B24),
          title: Text("Account"),
          elevation: 0,
        ),
        body: Column(
          children: [
            walletheader(),
            walletbody(),
          ],
        ));
  }
}
