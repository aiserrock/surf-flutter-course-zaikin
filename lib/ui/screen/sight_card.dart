import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/common/widgets/image/load_image_from_net.dart';
import 'package:places/ui/res/assets.dart';
import 'package:places/ui/res/colors.dart';
import 'package:places/ui/res/strings.dart';
import 'package:places/ui/res/text_styles.dart';

/// Карточка места
class SightCard extends StatelessWidget {
  final Sight sight;

  const SightCard({Key? key, required this.sight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3 / 2,
      child: SizedBox(
        height: 188,
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  CustomImage(sight: sight),
                  Positioned(
                    right: 16,
                    top: 16,
                    child: SvgPicture.asset(IconRes.icHeart),
                  ),
                  Positioned(
                    top: 16,
                    left: 16,
                    child: Text(sight.type, style: StyleRes.bold14White),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Description(sight: sight),
            ),
          ],
        ),
      ),
    );
  }
}

/// виджет текстового описания для карточки
class Description extends StatelessWidget {
  const Description({
    Key? key,
    required this.sight,
  }) : super(key: key);

  final Sight sight;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: ColorRes.cardBackground,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(16),
          bottomRight: Radius.circular(16),
        ),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(sight.name, style: StyleRes.medium16),
          const SizedBox(height: 2),
          Text(
            StringRes.closedBefore,
            style: StyleRes.regular14.copyWith(color: ColorRes.secondaryText),
          ),
        ],
      ),
    );
  }
}

/// Временная картинка заглушка
class CustomImage extends StatelessWidget {
  const CustomImage({
    required this.sight,
    Key? key,
  }) : super(key: key);

  final Sight sight;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(16),
        topRight: Radius.circular(16),
      ),
      child: AspectRatio(
        aspectRatio: 3,
        child: LoadImageFromNet(
          url: sight.url,
        ),
      ),
    );
  }
}
