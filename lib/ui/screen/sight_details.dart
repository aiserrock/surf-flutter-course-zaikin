import 'package:flutter/material.dart';
import 'package:places/ui/res/text_styles.dart';

/// Экран детальной информации о месте
class SightDetails extends StatelessWidget {
  const SightDetails({Key? key}) : super(key: key);

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
                    'Пряности и радости',
                    style: StyleRes.bold24,
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Row(
                    children: const [
                      Text('ресторан'),
                      SizedBox(
                        width: 16,
                      ),
                      Text('закрыто до 09:00'),
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  const Text('Пряный вкус радостной жизни вместе с шеф-поваром Изо Дзандзава,'
                      ' благодаря которой у гостей ресторана есть возможность выбирать из '
                      'двух направлений: европейского и восточного'),
                  const SizedBox(
                    height: 24,
                  ),
                  const PrimaryButton(),
                  const SizedBox(height: 24),
                  const Divider(),
                  const SizedBox(height: 8),
                  Row(
                    children: const [
                      SecondButton(title: 'Запланировать'),
                      SecondButton(title: 'В Избранное'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        const Positioned(
          top: 12,
          child: RowBack(),
        ),
      ]),
    );
  }
}

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
  }) : super(key: key);

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
            child: const Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'GOOO',
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SecondButton extends StatelessWidget {
  final String title;
  final IconData? icon;

  const SecondButton({
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
                  const SizedBox(
                    width: 8,
                  ),
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

class RowBack extends StatelessWidget {
  const RowBack({Key? key}) : super(key: key);

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
                icon: const SizedBox(
                  height: 32,
                  width: 32,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
