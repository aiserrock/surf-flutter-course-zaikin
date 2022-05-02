import 'package:flutter/material.dart';

/// Главная кнопка в рамках всего приложения
class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: const Color.fromRGBO(76, 175, 80, 1),
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            customBorder: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            onTap: () {},
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(text),
              ),
            ),
          ),
        ),
      ),
    );
  }
}