import 'package:flutter/material.dart';
import 'package:places/ui/res/colors.dart';
import 'package:places/ui/res/text_styles.dart';

/// Карточка места
class SightCard extends StatelessWidget {
  final String type;

  const SightCard({Key? key, required this.type}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 188,
      child: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                const CustomImage(),
                Positioned(
                  right: 16,
                  top: 16,
                  child: Container(
                    width: 24,
                    height: 24,
                    color: Colors.white,
                  ),
                ),
                Positioned(
                  top: 16,
                  left: 16,
                  child: Text(
                    type,
                    style: StyleRes.bold14White,
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
            child: Description(),
          ),
        ],
      ),
    );
  }
}

/// виджет текстового описания для карточки
class Description extends StatelessWidget {
  const Description({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 92,
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
            'Воронежский областной краеведческий музей',
            style: StyleRes.medium16,
          ),
          const SizedBox(
            height: 2,
          ),
          Text(
            'краткое описание',
            style: StyleRes.regular14,
          ),
        ],
      ),
    );
  }
}

class CustomImage extends StatelessWidget {
  const CustomImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 96,
      decoration: const BoxDecoration(
        color: Colors.blueAccent,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
    );
  }
}
