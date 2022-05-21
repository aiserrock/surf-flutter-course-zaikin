import 'package:flutter/material.dart';
import 'package:places/ui/res/assets.dart';

/// Виджет для загрузки карттинок из сети
class LoadImageFromNet extends StatelessWidget {
  const LoadImageFromNet({
    Key? key,
    required this.url,
  }) : super(key: key);

  final String url;

  /// https://api.flutter.dev/flutter/widgets/Image/loadingBuilder.html
  @override
  Widget build(BuildContext context) {
    return Image.network(
      url,
      fit: BoxFit.cover,
      loadingBuilder: (context, child, loadingProgress) {
        return loadingProgress == null
            ? child
            : Center(
                child: CircularProgressIndicator(
                  value: loadingProgress.expectedTotalBytes != null
                      ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes!
                      : null,
                ),
              );
      },
      errorBuilder: (context, error, stackTrace) {
        return Image.asset(
          IconRes.imgNotFound,
          fit: BoxFit.cover,
        );
      },
    );
  }
}
