import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:places/domain/sight.dart';
import 'package:places/mocks.dart';
import 'package:places/ui/common/widgets/bottom_navigation_bar/custom_bottom_bar.dart';
import 'package:places/ui/common/widgets/tab_bar/visiting_screen_tabbar.dart';
import 'package:places/ui/res/assets.dart';
import 'package:places/ui/res/colors.dart';
import 'package:places/ui/res/strings.dart';
import 'package:places/ui/screen/sight_card.dart';

class VisitingScreen extends StatefulWidget {
  const VisitingScreen({Key? key}) : super(key: key);

  @override
  State<VisitingScreen> createState() => _VisitingScreenState();
}

class _VisitingScreenState extends State<VisitingScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        extendBody: true,
        appBar: AppBar(
          title: const Text(StringRes.favoritesHeader),
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(60),
            child: VisitingScreenTabBar(),
          ),
          centerTitle: true,
        ),
        body: TabBarView(
          children: [
            _buildCardsInFavouriteTab(
              sights: mocks,
              cardType: CardType.planned,
            ),
            _buildCardsInFavouriteTab(
              sights: mocks,
              cardType: CardType.visited,
            ),
          ],
        ),
        bottomNavigationBar: const CustomBottomBar(current: 3),
      ),
    );
  }
}

/// строим карточки для таба Избранное
/// в зависимости от типа (хочу посетить/посетил)
Widget _buildCardsInFavouriteTab({
  required List<Sight> sights,
  required CardType cardType,
}) {
  Widget favTabBarView;

  /// ищем в базе карточки с соответствующим типом
  final currentSights =
      sights.where((sight) => sight.cardType == cardType).toList();

  /// если нет таких, то показываем заглушку
  if (currentSights.isEmpty) {
    final screenContent = blankScreenContent
        .where((item) => item['typeCard'] == cardType)
        .toList();

    favTabBarView = EmptyScreen(
      icon: screenContent.first['blankScreenIcon'] as String,
      header: screenContent.first['blankScreenHeader'] as String,
      text: screenContent.first['blankScreenText'] as String,
    );
  } else {
    /// иначе выводим карточки
    favTabBarView = BuildCardScreen(
      sights: currentSights,
      cardType: cardType,
    );
  }

  return favTabBarView;
}

/// информация когда карточек нет в разделе
class EmptyScreen extends StatelessWidget {
  const EmptyScreen({
    required this.icon,
    required this.header,
    required this.text,
    Key? key,
  }) : super(key: key);
  final String icon;
  final String header;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: MediaQuery.of(context).size.height / 3,
        child: Column(
          children: [
            SvgPicture.asset(
              icon,
              color: ColorRes.colorInactiveBlack,
              height: 64,
            ),
            const SizedBox(height: 24),
            Text(
              header,
              textAlign: TextAlign.center,
              style: Theme.of(context).primaryTextTheme.headline6,
            ),
            const SizedBox(height: 8),
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 180),
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: Theme.of(context).primaryTextTheme.bodyText2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// пустые данные для экранов в табе
const List<Map<String, Object>> blankScreenContent = [
  {
    'typeCard': CardType.planned,
    'blankScreenIcon': IconRes.icEmptyStateCard,
    'blankScreenHeader': StringRes.emptyHeaderText,
    'blankScreenText': StringRes.emptyFavoritePlacesText,
  },
  {
    'typeCard': CardType.visited,
    'blankScreenIcon': IconRes.icGo,
    'blankScreenHeader': StringRes.emptyHeaderText,
    'blankScreenText': StringRes.emptyVisitedPlacesText,
  },
];
