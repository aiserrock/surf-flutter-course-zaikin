// ignore_for_file: leading_newlines_in_multiline_strings

import 'package:places/domain/sight.dart';

/// замоканные интересные места
final List<Sight> mocks = <Sight>[
  Sight(
    name: 'Скульптура кошки',
    lat: 51.7155559,
    lon: 39.2113158,
    imgPreview:
        'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/10/bb/ec/66/caption.jpg?w=2000&h=-1&s=1',
    uri:
        'https://www.tripadvisor.ru/Attraction_Review-g298488-d8791744-Reviews-Cat_Sculpture-Yaroslavl_Yaroslavl_Oblast_Central_Russia.html',
    details: 'Скульптура кошки',
    type: 'памятник',
  ),
  Sight(
    name: 'Памятник медведю',
    lat: 51.7155559,
    lon: 39.2113158,
    imgPreview:
        'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0c/41/aa/9d/caption.jpg?w=800&h=-1&s=1',
    uri:
        'https://www.tripadvisor.ru/Attraction_Review-g298488-d4373331-Reviews-Monument_to_Bear-Yaroslavl_Yaroslavl_Oblast_Central_Russia.html',
    details: 'Памятник медведю',
    type: 'памятник',
    cardType: CardType.planned,
    date: '12 апр. 2022',
  ),
  Sight(
    name: 'Частный музей "Музыка и время"',
    lat: 51.6520658,
    lon: 39.2384338,
    imgPreview:
        'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/08/9f/ee/97/caption.jpg?w=2000&h=-1&s=1',
    uri:
        'https://www.tripadvisor.ru/Attraction_Review-g298488-d2330668-Reviews-Private_Museum_Music_and_Time-Yaroslavl_Yaroslavl_Oblast_Central_Russia.html',
    details: 'Воронежский зоопарк им. А.С.Попова. details',
    type: 'музей',
    cardType: CardType.visited,
    date: '13 апр. 2022',
  ),
  Sight(
    name: 'Шоу-макет Золотое кольцо',
    lat: 55.82669,
    lon: 37.637578,
    imgPreview:
        'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/18/54/34/bd/caption.jpg?w=1400&h=-1&s=1',
    uri:
        'https://www.tripadvisor.ru/Attraction_Review-g298488-d17692756-Reviews-Show_Maket_Golden_Ring-Yaroslavl_Yaroslavl_Oblast_Central_Russia.html',
    type: 'музей',
    details:
        '''Шоу-макет «Золотое кольцо» — уникальный проект не только для России, 
        но и для всего мира. Мы собрали в одном помещении все города Золотого
         кольца. Но мы не просто сделали миниатюры: мы воссоздали главные культурные
          объекты, передали жизнь этих городов, их звучание и атмосферу.
           Макет действительно живёт. Поезда ходят по расписанию, автомобили
            пропускают друг друга на дорогах, жители работают, общаются друг с 
            другом, любят, устраивают митинги, гуляют в парках. Дополнительные 
            возможности нашего макета помогут вам испытать такие эмоции, будто 
            вы и правда путешествуете по городам Золотого кольца.''',
    cardType: CardType.planned,
    date: '10 апр. 2022',
  ),
  Sight(
    name: 'Ярославский музей-заповедник',
    lat: 51.6520658,
    lon: 39.2384338,
    imgPreview:
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0b/56/5f/27/caption.jpg?w=2000&h=-1&s=1',
    uri:
    'https://www.tripadvisor.ru/Attraction_Review-g298488-d2330656-Reviews-Yaroslavl_Architectural_Historical_and_Art_Museum_Preserve-Yaroslavl_Yaroslavl_Ob.html',
    details: '''Ярославский государственный историко-архитектурный и художественный музей-заповедник
     - один из старейших музеев России и крупнейший музей Ярославской области.
      В 2015 году Ярославский музей-заповедник отмечает 150-летний юбилей. ''',
    type: 'музей',
    cardType: CardType.visited,
    date: '13 апр. 2022',
  ),
  Sight(
    name: 'Ярославский художественный музей',
    lat: 51.6520658,
    lon: 39.2384338,
    imgPreview:
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/06/e4/b1/d3/caption.jpg?w=2000&h=-1&s=1',
    uri:
    'https://www.tripadvisor.ru/Attraction_Review-g298488-d6966278-Reviews-Yaroslavl_Art_Museum-Yaroslavl_Yaroslavl_Oblast_Central_Russia.html',
    details: '''Ярославский художественный музей – крупнейший музей искусств в 
    Российской провинции, единственный специализированный художественный музей 
    области, победитель первого конкурса «Окно в Россию». В его собрании более 
    70 000 произведений живописи''',
    type: 'музей',
    cardType: CardType.visited,
    date: '13 апр. 2022',
  ),
  Sight(
    name: 'Церковь Ильи Пророка',
    lat: 51.6520658,
    lon: 39.2384338,
    imgPreview:
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/05/1e/ef/89/caption.jpg?w=2000&h=-1&s=1',
    uri:
    'https://www.tripadvisor.ru/Attraction_Review-g298488-d2330631-Reviews-The_Church_of_Ilya_the_Prophet-Yaroslavl_Yaroslavl_Oblast_Central_Russia.html',
    details: '''Хоть в третью поездку в Ярославль удалось увидеть это чудо.
    Зимой храм закрыт.''',
    type: 'церковь',
    cardType: CardType.visited,
    date: '13 апр. 2022',
  ),
  Sight(
    name: 'Часовня Казанской Богоматери',
    lat: 51.6520658,
    lon: 39.2384338,
    imgPreview:
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/10/56/fd/d6/the-chapel.jpg?w=2000&h=-1&s=1',
    uri:
    'https://www.tripadvisor.ru/Attraction_Review-g298488-d7052233-Reviews-Chapel_of_Our_Lady_of_Kazan-Yaroslavl_Yaroslavl_Oblast_Central_Russia.html',
    details: '''Часовня, изображенная на купюре в 1000 рублей.''',
    type: 'часовня',
    cardType: CardType.visited,
    date: '13 апр. 2022',
  ),
  Sight(
    name: 'Успенский Кафедральный Собор',
    lat: 51.6520658,
    lon: 39.2384338,
    imgPreview:
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/12/67/87/c7/caption.jpg?w=2000&h=-1&s=1',
    uri:
    'https://www.tripadvisor.ru/Attraction_Review-g298488-d2330633-Reviews-Cathedral_of_the_Assumption-Yaroslavl_Yaroslavl_Oblast_Central_Russia.html',
    details: '''Восстановлен в 2004-2010гг, строительство приурочено к 1000-летию Ярославля''',
    type: 'храм',
    cardType: CardType.visited,
    date: '13 апр. 2022',
  ),
];
