/// Класс сонержажщий информацию о интересующем месте
class Sight {
  Sight({
    required this.name,
    required this.lat,
    required this.lon,
    required this.imgPreview,
    required this.details,
    required this.type,
    this.cardType,
    this.date,
  });

  /// Название объекта
  final String name;

  /// Ширина
  final double lat;

  /// Долгота
  final double lon;

  /// img uri
  final String imgPreview;

  /// описание
  final String details;

  /// тип достопремечательности
  final String type;

  /// тип карточки
  final CardType? cardType;

  /// дата посещения
  final String? date;
}

/// Тип карточки, соответствует экрану, где расположена карточка
enum CardType {
  /// картачка используется в mainTab на экране поиска интересных мест
  search,

  /// картачка используется в favoriteTab экран запланированных к посещению интересных мест
  planned,

  /// картачка используется в favoriteTab экран посещенных интересных мест
  visited,
}
