import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/common/widgets/button/RowBackButton.dart';
import 'package:places/ui/common/widgets/button/primary_button.dart';
import 'package:places/ui/common/widgets/button/secondary_button.dart';
import 'package:places/ui/res/strings.dart';
import 'package:places/ui/res/text_styles.dart';


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
            const SizedBox(height: 360, child: Placeholder()),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 24),
                  Text(sight.name, style: StyleRes.bold24),
                  const SizedBox(height: 2),
                  Row(
                    children: [
                      Text(sight.type),
                      const SizedBox(width: 16),
                      const Text(StringRes.closedBefore),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Text(sight.details),
                  const SizedBox(height: 24),
                  const PrimaryButton(text: StringRes.primaryButtonText),
                  const SizedBox(height: 24),
                  const Divider(),
                  const SizedBox(height: 8),
                  Row(
                    children: const [
                      SecondaryButton(title: StringRes.book),
                      SecondaryButton(title: StringRes.addFavorite),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        const Positioned(top: 12, child: RowBackButton()),
      ]),
    );
  }
}
