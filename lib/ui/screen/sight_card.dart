import 'package:flutter/material.dart';

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
                    style: const TextStyle(
                      color: Colors.white,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                    ),
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
        color: Color.fromRGBO(245, 245, 245, 1),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(16),
          bottomRight: Radius.circular(16),
        ),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Воронежский областной\nкраеведческий музей',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            'краткое описание',
            style: TextStyle(
              color: Color.fromRGBO(124, 126, 146, 1),
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w400,
              fontSize: 14,
            ),
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
