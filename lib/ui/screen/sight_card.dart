import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/common/widgets/image_loader/load_image_from_net.dart';
import 'package:places/ui/res/colors.dart';
import 'package:places/ui/res/strings.dart';
import 'package:places/ui/res/text_styles.dart';

/// Карточка места
class SightCard extends StatelessWidget {
  const SightCard({
    Key? key,
    required this.sight,
    required this.cardType,
  }) : super(key: key);

  /// интересное место
  final Sight sight;

  /// в каком разделе отобразить карту (наполнение карты будет в каждлом разделе свое)
  final CardType cardType;

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
                  Positioned(right: 16, top: 16, child: CardActions(cardType: cardType)),
                  Positioned(top: 16, left: 16, child: PlaceType(sight: sight)),
                ],
              ),
            ),
            Expanded(child: CardTextContent(sight: sight, cardType: cardType)),
          ],
        ),
      ),
    );
  }
}

class PlaceType extends StatelessWidget {
  const PlaceType({
    Key? key,
    required this.sight,
  }) : super(key: key);

  final Sight sight;

  @override
  Widget build(BuildContext context) {
    return Text(sight.type, style: StyleRes.bold14White);
  }
}

/// Бэкграунд картинка
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
          url: sight.imgPreview,
        ),
      ),
    );
  }
}

/// Экран со списком карточке
class BuildCardScreen extends StatelessWidget {
  const BuildCardScreen({
    Key? key,
    required this.sights,
    required this.cardType,
  }) : super(key: key);

  /// Список интересных мест
  final List<Sight> sights;

  /// К какому разделу принадлежит карточка
  final CardType cardType;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            for (var sight in sights) ...[
              SightCard(sight: sight, cardType: cardType),
              const SizedBox(height: 16),
            ],
          ],
        ),
      ),
    );
  }
}

/// actions button
/// наполнение зависит от типа карточки
class CardActions extends StatelessWidget {
  const CardActions({
    Key? key,
    required this.cardType,
  }) : super(key: key);

  /// тип карты
  final CardType cardType;

  static const _search = <Widget>[Icon(Icons.favorite_border,color: Colors.white)],
      _planned = <Widget>[
        Icon(Icons.calendar_today,color: Colors.white),
        SizedBox(width: 16),
        Icon(Icons.close,color: Colors.white),
      ],
      _visited = <Widget>[
        Icon(Icons.share, color: Colors.white),
        SizedBox(width: 16),
        Icon(Icons.close,color: Colors.white),
      ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (cardType == CardType.search) ..._search,
        if (cardType == CardType.planned) ..._planned,
        if (cardType == CardType.visited) ..._visited,
      ],
    );
  }
}

/// виджет текстового описания для карточки
class CardTextContent extends StatelessWidget {
  const CardTextContent({
    required this.sight,
    required this.cardType,
    Key? key,
  }) : super(key: key);

  /// интересное место
  final Sight sight;

  /// тип карточки
  final CardType cardType;

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
          Text(
            sight.name,
            style: StyleRes.medium16,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
          const SizedBox(height: 2),
          if (cardType == CardType.search) ...[
            Text(
              sight.details,
              style: StyleRes.regular14.copyWith(color: ColorRes.secondaryText),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ],
          if (cardType == CardType.planned && sight.date != null) ...[
            Text(
              '${StringRes.dataPlanned} ${sight.date}',
              style: StyleRes.regular14.copyWith(color: ColorRes.planedText),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ],
          if (cardType == CardType.visited && sight.date != null) ...[
            Text(
              '${StringRes.dataVisited} ${sight.date}',
              style: StyleRes.regular14.copyWith(color: ColorRes.secondaryText),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ],
          if (cardType != CardType.search) ...[
            const SizedBox(height: 12),
            Text(
              StringRes.closedBefore,
              style: StyleRes.regular14.copyWith(color: ColorRes.secondaryText),
            ),
          ],
        ],
      ),
    );
  }
}
