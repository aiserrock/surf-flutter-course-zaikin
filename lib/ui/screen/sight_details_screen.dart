import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/common/widgets/button/button_rounded.dart';
import 'package:places/ui/common/widgets/button/primary_button.dart';
import 'package:places/ui/common/widgets/button/secondary_button.dart';
import 'package:places/ui/common/widgets/image_loader/load_image_from_net.dart';
import 'package:places/ui/res/assets.dart';
import 'package:places/ui/res/colors.dart';
import 'package:places/ui/res/strings.dart';
import 'package:places/ui/res/text_styles.dart';
import 'package:places/ui/res/themes.dart';

class SightDetailsScreen extends StatelessWidget {
  const SightDetailsScreen({
    Key? key,
    required this.sight,
  }) : super(key: key);

  final Sight sight;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                height: 360,
                child: LoadImageFromNet(url: sight.imgPreview),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 24),
                    Text(
                      sight.name,
                      style: theme.textTheme.headline4,
                    ),
                    const SizedBox(height: 2),
                    Row(
                      children: [
                        Text(
                          sight.type,
                          style: theme.textTheme.bodyText2,
                        ),
                        const SizedBox(width: 16),
                        Text(
                          StringRes.closedBefore,
                          style: theme.textTheme.bodyText2
                              ?.copyWith(color: ColorRes.colorInactiveBlack),
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),
                    Text(
                      sight.details,
                      style: theme.textTheme.bodyText1,
                    ),
                    const SizedBox(height: 24),
                    PrimaryButton(
                      text: StringRes.buildRoute,
                      textStyle: StyleRes.bold14White,
                      icon: IconRes.icGo,
                      onPressed: () {
                        debugPrint('кнопка построить маршрут');
                      },
                    ),
                    const SizedBox(height: 24),
                    const Divider(),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        SecondaryButton(
                          title: StringRes.book,
                          textStyle: theme.primaryTextTheme.bodyText2,
                          icon: IconRes.icCalendarGray,
                          iconColor: Theme.of(context)
                              .extension<CustomColors>()!
                              .inactiveBlack,
                          onPressed: () {
                            debugPrint('кнопка забукать');
                          },
                        ),
                        SecondaryButton(
                          title: StringRes.addFavorite,
                          textStyle: theme.textTheme.bodyText1,
                          icon: IconRes.icHeart,
                          iconColor: theme.colorScheme.onPrimary,
                          onPressed: () {
                            debugPrint('кнопка добавить в фейворит');
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 16,
            left: 16,
            child: ButtonRounded(
              size: 32,
              radius: 12,
              backgroundColor: Theme.of(context).primaryColor,
              iconColor: Theme.of(context).colorScheme.onPrimary,
              icon: IconRes.icArrowBack,
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
        ],
      ),
    );
  }
}
