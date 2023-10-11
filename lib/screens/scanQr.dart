// ignore_for_file: camel_case_types

import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';

class createScreen extends StatefulWidget {
  const createScreen({super.key});

  @override
  State<createScreen> createState() => _createScreenState();
}

class _createScreenState extends State<createScreen> {
  var qrstr = 'Add Data';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Creating QR code'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BarcodeWidget(
            data: qrstr,
            barcode: Barcode.qrCode(),
            color: Colors.blue,
            width: 250,
            height: 250,
          ),
          Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width * .8,
            child: TextField(
              onChanged: (val) {
                setState(() {
                  qrstr = val;
                });
              },
              decoration: const InputDecoration(
                hintText: 'Enter your data here',
                border: OutlineInputBorder(
                    borderSide: BorderSide(
                  color: Colors.blue,
                  width: 2,
                )),
              ),
            ),
          ),
          SizedBox(width: MediaQuery.of(context).size.width,)
        ],
      ),
    );
  }
}
