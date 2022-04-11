import 'package:flutter/material.dart';

class SightListScreen extends StatefulWidget {
  const SightListScreen({Key? key}) : super(key: key);

  @override
  _SightListScreenState createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {
  final baseTextStyle = const TextStyle(
    color: Colors.black,
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w700,
    fontSize: 32,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 40,
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(76),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'C',
                      style: baseTextStyle.copyWith(color: Colors.green),
                    ),
                    const TextSpan(
                      text: 'писок \n',
                    ),
                    TextSpan(
                      text: 'и',
                      style: baseTextStyle.copyWith(color: Colors.yellow),
                    ),
                    const TextSpan(
                      text: 'нтересных мест',
                    ),
                  ],
                  style: baseTextStyle,
                ),
              ),
            ),
          ),
        ),
      ),
      body: const Center(
        child: Text('Hello!'),
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}
