import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class PinPut extends StatefulWidget {
  const PinPut({Key? key, this.onChanged}) : super(key: key);

  final void Function(String)? onChanged;

  @override
  State<PinPut> createState() => _PinPutState();
}

class _PinPutState extends State<PinPut> {


  @override
  Widget build(BuildContext context) {
    return Pinput(
      onChanged: widget.onChanged,
      length: 4,
      defaultPinTheme: PinTheme(
        height: MediaQuery.of(context).size.height * 0.09,
        width: MediaQuery.of(context).size.width * 0.162,
        textStyle: const TextStyle(
          fontSize: 20,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        )
      ),
    );
  }
}
