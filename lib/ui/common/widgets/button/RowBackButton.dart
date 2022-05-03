import 'package:flutter/material.dart';

/// Кнопка назад в рамках всего приложения
class RowBackButton extends StatelessWidget {
  const RowBackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 8, left: 15),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.amber,
              ),
              height: 32,
              width: 32,
              child: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const SizedBox(height: 32, width: 32),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
