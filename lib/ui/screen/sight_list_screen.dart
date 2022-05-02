import 'package:flutter/material.dart';
import 'package:places/ui/screen/sight_card.dart';

class SightListScreen extends StatefulWidget {
  const SightListScreen({Key? key}) : super(key: key);

  @override
  _SightListScreenState createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 40,
        elevation: 0,
        backgroundColor: Colors.white,
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(76),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Cписок\nинтересных мест',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w700,
                  fontSize: 32,
                ),
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(children: const [
              SightCard(type: 'музей'),
              SizedBox(
                height: 16,
              ),
              SightCard(type: 'категория'),
              SizedBox(
                height: 16,
              ),
              SightCard(type: 'дом'),
            ]),
          ),
        ),
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}
