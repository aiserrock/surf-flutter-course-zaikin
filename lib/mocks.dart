import 'package:places/domain/sight.dart';

/// замоканные интересные места
final List<Sight> mocks = <Sight>[
  Sight(
    name: 'Котенок С Ул. Лизюкова',
    lat: 51.7155559,
    lon: 39.2113158,
    imgPreview: 'https://media-cdn.tripadvisor.com/media/photo-s/04/36/bf/e5/caption.jpg',
    details: 'Котенок  Ул. Лизюкова details',
    type: 'ресторан',
  ),
  Sight(
    name: 'Kорабль-музей Гото Предестинация',
    lat: 51.7155559,
    lon: 39.2113158,
    imgPreview: 'https://media-cdn.tripadvisor.com/media/photo-s/15/27/3b/77/caption.jpg',
    details: 'Kорабль-музей Гото Предестинация details',
    type: 'достопримечательность',
    cardType: CardType.planned,
    date: '12 апр. 2022',
  ),
  Sight(
    name: 'Воронежский зоопарк им. А.С.Попова.',
    lat: 51.6520658,
    lon: 39.2384338,
    imgPreview: 'https://voronezh36.com/wp-content/uploads/2020/03/zoopark.jpg',
    details: 'Воронежский зоопарк им. А.С.Попова. details',
    type: 'парк',
    cardType: CardType.visited,
    date: '13 апр. 2022',
  ),
  Sight(
    name: 'Выставка достижений народного хозяйства',
    lat: 55.82669,
    lon: 37.637578,
    imgPreview: 'https://turisticum.ru/img/moscow/vdnh/9.jpg',
    type: 'достопримечательность',
    details:
        'Выставочный комплекс в Останкинском районе Северо-Восточного административного округа города Москвы, второй по величине выставочный комплекс в городе. ',
    cardType: CardType.planned,
    date: '10 апр. 2022',
  ),
];
