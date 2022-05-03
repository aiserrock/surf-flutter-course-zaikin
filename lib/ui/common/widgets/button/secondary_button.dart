import 'package:flutter/material.dart';

/// Второстепенная кнопка в рамках всего приложения
class SecondaryButton extends StatelessWidget {
  final String title;
  final IconData? icon;

  const SecondaryButton({
    Key? key,
    required this.title,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {},
          child: SizedBox(
            height: 40,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 14,
                right: 14,
                top: 8,
                bottom: 8,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 24,
                    height: 24,
                    color: Colors.yellow,
                  ),
                  const SizedBox(width: 8),
                  Text(title),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}