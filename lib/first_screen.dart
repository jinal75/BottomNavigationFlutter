import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({
    Key? key,
    required this.voidCallback,
  }) : super(key: key);

  final VoidCallback voidCallback;

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Flex(
          direction: Axis.vertical,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("First Screen"),
            ElevatedButton(
              onPressed: widget.voidCallback,
              child: Text("Go To Forth Screen"),
            )
          ],
        ),
      ),
    );
  }
}