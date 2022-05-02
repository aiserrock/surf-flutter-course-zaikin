import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/common/widgets/button/RowBackButton.dart';
import 'package:places/ui/common/widgets/button/primary_button.dart';
import 'package:places/ui/common/widgets/button/secondary_button.dart';

class SightDetailsScreen extends StatelessWidget {
  const SightDetailsScreen({
    Key? key,
    required this.sight,
  }) : super(key: key);

  final Sight sight;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Column(
          children: [
            const SizedBox(
              height: 360,
              child: Placeholder(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 24,
                  ),
                  Text(
                    sight.name,
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Row(
                    children: [
                      Text(sight.type),
                      const SizedBox(width: 16),
                      Text('закрыто до 09:00'),
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Text(sight.details),
                  const SizedBox(
                    height: 24,
                  ),
                  const PrimaryButton(text: 'GOO'),
                  const SizedBox(height: 24),
                  const Divider(),
                  const SizedBox(height: 8),
                  Row(
                    children: const [
                      SecondaryButton(title: 'Запланировать'),
                      SecondaryButton(title: 'В Избранное'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        const Positioned(
          top: 12,
          child: RowBackButton(),
        ),
      ]),
    );
  }
}
