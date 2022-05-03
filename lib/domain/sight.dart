/// Класс сонержажщий информацию о интересующем месте
class Sight {
  /// Название объекта
  final String name;

  /// Ширина
  final double lat;

  /// Долгота
  final double lon;

  /// uri
  final String url;

  /// описание
  final String details;

  /// тип достопремечательности
  final String type;

  Sight({
    required this.name,
    required this.lat,
    required this.lon,
    required this.url,
    required this.details,
    required this.type,
  });
}
